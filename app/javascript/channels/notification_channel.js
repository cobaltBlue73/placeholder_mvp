import consumer from "./consumer";

const initMemoryNotification = () => {
  consumer.subscriptions.create({ channel: "NotificationChannel"}, {
    received(data) {
        // const modal = document.querySelector('#staticBackdrop')
        // $('#staticBackdrop').modal();
        const counter = document.querySelector('.unread-notifications-counter');
        let counterNum = parseInt(counter.innerText);

        if (counterNum > 0) {
          counterNum = counterNum + 1;
        } else {
          counter.classList.add('active');
          counterNum = counterNum + 1;
        }
      }
    });
}

export { initMemoryNotification };
