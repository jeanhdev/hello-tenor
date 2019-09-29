class DocumentsController < ApplicationController
  def index
    @case = Case.find(params[:case_id])
    @documents = policy_scope(Document)
    @documents = @case.documents
  end

  def new
    @case = Case.find(params[:case_id])
    @document = Document.new
    authorize @document
  end

  def create
    @case = Case.find(params[:case_id])
    @document = Document.new(document_params)
    # @document.case = @case
    @document.user = current_user
    if @document.save
      @case_doc = CaseDoc.new
      @case_doc.case = @case
      @case_doc.document = @document
      @case_doc.save
      # redirect_to case_documents_path(@case), notice: 'Votre document a bien été enregistré.'
      redirect_to case_path(@case), notice: 'Votre document a bien été enregistré.'
    else
      render 'new'
    end
    authorize @document
  end

  def destroy
    # @case = Case.find(params[:case_id])
    @document = Document.find(params[:id])
    authorize @document
    @case = @document.case_docs.last.case
    @document.destroy

    case @document.category
    when 'Correspondance'
      @category = 'letters'
      @documents = @case.documents.letters
    when 'Conclusions'
      @category = 'conclusions'
      @documents = @case.documents.conclusions
    when 'Conclusions Adverses'
      @category = 'conclusions_opponent'
      @documents = @case.documents.conclusions_opponent
    else
      @category = 'pieces'
      @documents = @case.documents.pieces
    end

    respond_to do |format|
      format.html { redirect_to case_path(@case), notice: 'Votre document a bien été supprimé.'}
      format.js # <-- will render `app/views/documents/destroy.js.erb`
    end
  end

  private

  def document_params
    params.require(:document).permit(:name, :storage, :category, :storage_cache)
  end
end
