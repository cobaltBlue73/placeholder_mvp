import consumer from "./consumer";

const initMemoryNotification = () => {
  //I would need the instance when a memory is created

  consumer.subscriptions.create({ channel: "NotificationChannel" }, {
    received(data) {
        console.log(data); // called when data is broadcast in the cable
      },
    });
}

export { initMemoryNotification };
