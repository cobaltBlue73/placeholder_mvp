import consumer from "./consumer";

const initMemoryNotification = () => {
  //I would need the instance when a memory is created



  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;

    consumer.subscriptions.create({ channel: "NotificationChannel" }, {
      received(data) {
        console.log(data); // called when data is broadcast in the cable
      },
    });
  }
}

export { initMemoryNotification };
