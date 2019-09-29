import { CountUp } from 'countup.js';

const initCounter = () => {
  const counter = document.getElementById("counter-target");

  if (counter) {
    const endCounter = Number.parseInt(counter.dataset.number, 10)
    const options = {
      duration: 2.5,
    };
    const feesCounter = new CountUp('counter-target', endCounter, options);
    feesCounter.start();
  }
}

export { initCounter };
