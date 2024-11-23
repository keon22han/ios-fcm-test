import SwiftUI
import FirebaseMessaging

public struct ContentView: View {
    public init() {}

    public var body: some View {
        Text("Hello, World!")
            .padding()
        Button(action: {
            // test code
        }) {
            Text("test")
        }
    }
}

private func subscribeToTopic() {
        // MARK: 주제 구독하기
        Messaging.messaging().subscribe(toTopic: "topic") { error in
            if let error = error {
                print("Failed to subscribe to topic: \(error.localizedDescription)")
            } else {
                print("Subscribed to topic!")
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
