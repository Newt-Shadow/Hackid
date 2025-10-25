package io.flutter.plugins.firebase.messaging;

import com.google.firebase.messaging.u0;
/* loaded from: classes2.dex */
public class FlutterFirebaseRemoteMessageLiveData extends androidx.lifecycle.q {
    private static FlutterFirebaseRemoteMessageLiveData instance;

    public static FlutterFirebaseRemoteMessageLiveData getInstance() {
        if (instance == null) {
            instance = new FlutterFirebaseRemoteMessageLiveData();
        }
        return instance;
    }

    public void postRemoteMessage(u0 u0Var) {
        postValue(u0Var);
    }
}
