package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ExecutorService;
/* loaded from: classes.dex */
public class FirebaseMessagingService extends i {
    public static final String ACTION_DIRECT_BOOT_REMOTE_INTENT = "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT";
    static final String ACTION_NEW_TOKEN = "com.google.firebase.messaging.NEW_TOKEN";
    static final String ACTION_REMOTE_INTENT = "com.google.android.c2dm.intent.RECEIVE";
    static final String EXTRA_TOKEN = "token";
    private static final int RECENTLY_RECEIVED_MESSAGE_IDS_MAX_SIZE = 10;
    private static final Queue<String> recentlyReceivedMessageIds = new ArrayDeque(10);
    private k5.c rpc;

    private boolean g(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Queue<String> queue = recentlyReceivedMessageIds;
        if (queue.contains(str)) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Received duplicate message: " + str);
                return true;
            }
            return true;
        }
        if (queue.size() >= 10) {
            queue.remove();
        }
        queue.add(str);
        return false;
    }

    private void h(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null) {
            extras = new Bundle();
        }
        extras.remove("androidx.content.wakelockid");
        if (m0.t(extras)) {
            m0 m0Var = new m0(extras);
            ExecutorService e10 = o.e();
            try {
                if (new f(this, m0Var, e10).a()) {
                    return;
                }
                e10.shutdown();
                if (k0.E(intent)) {
                    k0.w(intent);
                }
            } finally {
                e10.shutdown();
            }
        }
        onMessageReceived(new u0(extras));
    }

    private String i(Intent intent) {
        String stringExtra = intent.getStringExtra("google.message_id");
        if (stringExtra == null) {
            return intent.getStringExtra("message_id");
        }
        return stringExtra;
    }

    private k5.c j(Context context) {
        if (this.rpc == null) {
            this.rpc = new k5.c(context.getApplicationContext());
        }
        return this.rpc;
    }

    private void k(Intent intent) {
        if (!g(intent.getStringExtra("google.message_id"))) {
            l(intent);
        }
        j(this).b(new k5.a(intent));
    }

    private void l(Intent intent) {
        String stringExtra = intent.getStringExtra("message_type");
        if (stringExtra == null) {
            stringExtra = "gcm";
        }
        char c10 = 65535;
        switch (stringExtra.hashCode()) {
            case -2062414158:
                if (stringExtra.equals("deleted_messages")) {
                    c10 = 0;
                    break;
                }
                break;
            case 102161:
                if (stringExtra.equals("gcm")) {
                    c10 = 1;
                    break;
                }
                break;
            case 814694033:
                if (stringExtra.equals("send_error")) {
                    c10 = 2;
                    break;
                }
                break;
            case 814800675:
                if (stringExtra.equals("send_event")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                onDeletedMessages();
                return;
            case 1:
                k0.y(intent);
                h(intent);
                return;
            case 2:
                onSendError(i(intent), new y0(intent.getStringExtra("error")));
                return;
            case 3:
                onMessageSent(intent.getStringExtra("google.message_id"));
                return;
            default:
                Log.w("FirebaseMessaging", "Received message with unknown type: " + stringExtra);
                return;
        }
    }

    static void resetForTesting() {
        recentlyReceivedMessageIds.clear();
    }

    @Override // com.google.firebase.messaging.i
    protected Intent getStartCommandIntent(Intent intent) {
        return z0.b().c();
    }

    @Override // com.google.firebase.messaging.i
    public void handleIntent(Intent intent) {
        String action = intent.getAction();
        if (!ACTION_REMOTE_INTENT.equals(action) && !ACTION_DIRECT_BOOT_REMOTE_INTENT.equals(action)) {
            if (ACTION_NEW_TOKEN.equals(action)) {
                onNewToken(intent.getStringExtra(EXTRA_TOKEN));
                return;
            }
            Log.d("FirebaseMessaging", "Unknown intent action: " + intent.getAction());
            return;
        }
        k(intent);
    }

    public void onDeletedMessages() {
    }

    public void onMessageReceived(u0 u0Var) {
    }

    @Deprecated
    public void onMessageSent(String str) {
    }

    public void onNewToken(String str) {
    }

    @Deprecated
    public void onSendError(String str, Exception exc) {
    }

    void setRpcForTesting(k5.c cVar) {
        this.rpc = cVar;
    }
}
