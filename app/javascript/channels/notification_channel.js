import consumer from "./consumer";

const initMemoryNotification = () => {
  //I would need the instance when a memory is created

  consumer.subscriptions.create({ channel: "NotificationChannel"}, {
    received(data) {
        const modal = document.querySelector('#staticBackdrop')
        $('#staticBackdrop').modal();
      },
    });
}

export { initMemoryNotification };
