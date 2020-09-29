import consumer from "./consumer";

const initMemoryNotification = () => {
  consumer.subscriptions.create({ channel: "NotificationChannel"}, {
    received(data) {
      const counter = document.querySelector('.unread-notifications-counter');
      counter.classList.add('active');
      counter.innerText = data.unread;
    }
  });
}

export { initMemoryNotification };
