package io.flutter.plugins.sharedpreferences;

import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public interface SharedPreferencesAsyncApi {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* loaded from: classes2.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final xc.d codec$delegate;

        static {
            xc.d a10;
            a10 = xc.f.a(new id.a() { // from class: io.flutter.plugins.sharedpreferences.j
                @Override // id.a
                public final Object invoke() {
                    MessagesAsyncPigeonCodec codec_delegate$lambda$0;
                    codec_delegate$lambda$0 = SharedPreferencesAsyncApi.Companion.codec_delegate$lambda$0();
                    return codec_delegate$lambda$0;
                }
            });
            codec$delegate = a10;
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final MessagesAsyncPigeonCodec codec_delegate$lambda$0() {
            return new MessagesAsyncPigeonCodec();
        }

        public static /* synthetic */ void setUp$default(Companion companion, BinaryMessenger binaryMessenger, SharedPreferencesAsyncApi sharedPreferencesAsyncApi, String str, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                str = "";
            }
            companion.setUp(binaryMessenger, sharedPreferencesAsyncApi, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$10$lambda$9(SharedPreferencesAsyncApi sharedPreferencesAsyncApi, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj2;
            Object obj3 = list.get(1);
            kotlin.jvm.internal.m.c(obj3, "null cannot be cast to non-null type kotlin.String");
            String str2 = (String) obj3;
            Object obj4 = list.get(2);
            kotlin.jvm.internal.m.c(obj4, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions");
            try {
                sharedPreferencesAsyncApi.setEncodedStringList(str, str2, (SharedPreferencesPigeonOptions) obj4);
                wrapError = yc.n.b(null);
            } catch (Throwable th) {
                wrapError = MessagesAsync_gKt.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$12$lambda$11(SharedPreferencesAsyncApi sharedPreferencesAsyncApi, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj2;
            Object obj3 = list.get(1);
            kotlin.jvm.internal.m.c(obj3, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>");
            List<String> list2 = (List) obj3;
            Object obj4 = list.get(2);
            kotlin.jvm.internal.m.c(obj4, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions");
            try {
                sharedPreferencesAsyncApi.setDeprecatedStringList(str, list2, (SharedPreferencesPigeonOptions) obj4);
                wrapError = yc.n.b(null);
            } catch (Throwable th) {
                wrapError = MessagesAsync_gKt.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$14$lambda$13(SharedPreferencesAsyncApi sharedPreferencesAsyncApi, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj2;
            Object obj3 = list.get(1);
            kotlin.jvm.internal.m.c(obj3, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions");
            try {
                wrapError = yc.n.b(sharedPreferencesAsyncApi.getString(str, (SharedPreferencesPigeonOptions) obj3));
            } catch (Throwable th) {
                wrapError = MessagesAsync_gKt.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$16$lambda$15(SharedPreferencesAsyncApi sharedPreferencesAsyncApi, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj2;
            Object obj3 = list.get(1);
            kotlin.jvm.internal.m.c(obj3, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions");
            try {
                wrapError = yc.n.b(sharedPreferencesAsyncApi.getBool(str, (SharedPreferencesPigeonOptions) obj3));
            } catch (Throwable th) {
                wrapError = MessagesAsync_gKt.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$18$lambda$17(SharedPreferencesAsyncApi sharedPreferencesAsyncApi, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj2;
            Object obj3 = list.get(1);
            kotlin.jvm.internal.m.c(obj3, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions");
            try {
                wrapError = yc.n.b(sharedPreferencesAsyncApi.getDouble(str, (SharedPreferencesPigeonOptions) obj3));
            } catch (Throwable th) {
                wrapError = MessagesAsync_gKt.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$2$lambda$1(SharedPreferencesAsyncApi sharedPreferencesAsyncApi, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj2;
            Object obj3 = list.get(1);
            kotlin.jvm.internal.m.c(obj3, "null cannot be cast to non-null type kotlin.Boolean");
            boolean booleanValue = ((Boolean) obj3).booleanValue();
            Object obj4 = list.get(2);
            kotlin.jvm.internal.m.c(obj4, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions");
            try {
                sharedPreferencesAsyncApi.setBool(str, booleanValue, (SharedPreferencesPigeonOptions) obj4);
                wrapError = yc.n.b(null);
            } catch (Throwable th) {
                wrapError = MessagesAsync_gKt.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$20$lambda$19(SharedPreferencesAsyncApi sharedPreferencesAsyncApi, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj2;
            Object obj3 = list.get(1);
            kotlin.jvm.internal.m.c(obj3, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions");
            try {
                wrapError = yc.n.b(sharedPreferencesAsyncApi.getInt(str, (SharedPreferencesPigeonOptions) obj3));
            } catch (Throwable th) {
                wrapError = MessagesAsync_gKt.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$22$lambda$21(SharedPreferencesAsyncApi sharedPreferencesAsyncApi, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj2;
            Object obj3 = list.get(1);
            kotlin.jvm.internal.m.c(obj3, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions");
            try {
                wrapError = yc.n.b(sharedPreferencesAsyncApi.getPlatformEncodedStringList(str, (SharedPreferencesPigeonOptions) obj3));
            } catch (Throwable th) {
                wrapError = MessagesAsync_gKt.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$24$lambda$23(SharedPreferencesAsyncApi sharedPreferencesAsyncApi, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj2;
            Object obj3 = list.get(1);
            kotlin.jvm.internal.m.c(obj3, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions");
            try {
                wrapError = yc.n.b(sharedPreferencesAsyncApi.getStringList(str, (SharedPreferencesPigeonOptions) obj3));
            } catch (Throwable th) {
                wrapError = MessagesAsync_gKt.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$26$lambda$25(SharedPreferencesAsyncApi sharedPreferencesAsyncApi, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            List<String> list2 = (List) list.get(0);
            Object obj2 = list.get(1);
            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions");
            try {
                sharedPreferencesAsyncApi.clear(list2, (SharedPreferencesPigeonOptions) obj2);
                wrapError = yc.n.b(null);
            } catch (Throwable th) {
                wrapError = MessagesAsync_gKt.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$28$lambda$27(SharedPreferencesAsyncApi sharedPreferencesAsyncApi, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            List<String> list2 = (List) list.get(0);
            Object obj2 = list.get(1);
            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions");
            try {
                wrapError = yc.n.b(sharedPreferencesAsyncApi.getAll(list2, (SharedPreferencesPigeonOptions) obj2));
            } catch (Throwable th) {
                wrapError = MessagesAsync_gKt.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$30$lambda$29(SharedPreferencesAsyncApi sharedPreferencesAsyncApi, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            List<String> list2 = (List) list.get(0);
            Object obj2 = list.get(1);
            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions");
            try {
                wrapError = yc.n.b(sharedPreferencesAsyncApi.getKeys(list2, (SharedPreferencesPigeonOptions) obj2));
            } catch (Throwable th) {
                wrapError = MessagesAsync_gKt.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$4$lambda$3(SharedPreferencesAsyncApi sharedPreferencesAsyncApi, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj2;
            Object obj3 = list.get(1);
            kotlin.jvm.internal.m.c(obj3, "null cannot be cast to non-null type kotlin.String");
            String str2 = (String) obj3;
            Object obj4 = list.get(2);
            kotlin.jvm.internal.m.c(obj4, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions");
            try {
                sharedPreferencesAsyncApi.setString(str, str2, (SharedPreferencesPigeonOptions) obj4);
                wrapError = yc.n.b(null);
            } catch (Throwable th) {
                wrapError = MessagesAsync_gKt.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$6$lambda$5(SharedPreferencesAsyncApi sharedPreferencesAsyncApi, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj2;
            Object obj3 = list.get(1);
            kotlin.jvm.internal.m.c(obj3, "null cannot be cast to non-null type kotlin.Long");
            long longValue = ((Long) obj3).longValue();
            Object obj4 = list.get(2);
            kotlin.jvm.internal.m.c(obj4, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions");
            try {
                sharedPreferencesAsyncApi.setInt(str, longValue, (SharedPreferencesPigeonOptions) obj4);
                wrapError = yc.n.b(null);
            } catch (Throwable th) {
                wrapError = MessagesAsync_gKt.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$8$lambda$7(SharedPreferencesAsyncApi sharedPreferencesAsyncApi, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj2;
            Object obj3 = list.get(1);
            kotlin.jvm.internal.m.c(obj3, "null cannot be cast to non-null type kotlin.Double");
            double doubleValue = ((Double) obj3).doubleValue();
            Object obj4 = list.get(2);
            kotlin.jvm.internal.m.c(obj4, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.SharedPreferencesPigeonOptions");
            try {
                sharedPreferencesAsyncApi.setDouble(str, doubleValue, (SharedPreferencesPigeonOptions) obj4);
                wrapError = yc.n.b(null);
            } catch (Throwable th) {
                wrapError = MessagesAsync_gKt.wrapError(th);
            }
            reply.reply(wrapError);
        }

        public final MessageCodec<Object> getCodec() {
            return (MessageCodec) codec$delegate.getValue();
        }

        public final void setUp(BinaryMessenger binaryMessenger, SharedPreferencesAsyncApi sharedPreferencesAsyncApi) {
            kotlin.jvm.internal.m.e(binaryMessenger, "binaryMessenger");
            setUp$default(this, binaryMessenger, sharedPreferencesAsyncApi, null, 4, null);
        }

        public final void setUp(BinaryMessenger binaryMessenger, final SharedPreferencesAsyncApi sharedPreferencesAsyncApi, String messageChannelSuffix) {
            String str;
            kotlin.jvm.internal.m.e(binaryMessenger, "binaryMessenger");
            kotlin.jvm.internal.m.e(messageChannelSuffix, "messageChannelSuffix");
            if (messageChannelSuffix.length() > 0) {
                str = "." + messageChannelSuffix;
            } else {
                str = "";
            }
            BinaryMessenger.TaskQueue makeBackgroundTaskQueue = binaryMessenger.makeBackgroundTaskQueue();
            BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.setBool" + str, getCodec(), makeBackgroundTaskQueue);
            if (sharedPreferencesAsyncApi != null) {
                basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.sharedpreferences.q
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        SharedPreferencesAsyncApi.Companion.setUp$lambda$2$lambda$1(SharedPreferencesAsyncApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.setString" + str, getCodec(), makeBackgroundTaskQueue);
            if (sharedPreferencesAsyncApi != null) {
                basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.sharedpreferences.x
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        SharedPreferencesAsyncApi.Companion.setUp$lambda$4$lambda$3(SharedPreferencesAsyncApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel2.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel3 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.setInt" + str, getCodec(), makeBackgroundTaskQueue);
            if (sharedPreferencesAsyncApi != null) {
                basicMessageChannel3.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.sharedpreferences.y
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        SharedPreferencesAsyncApi.Companion.setUp$lambda$6$lambda$5(SharedPreferencesAsyncApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel3.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel4 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.setDouble" + str, getCodec(), makeBackgroundTaskQueue);
            if (sharedPreferencesAsyncApi != null) {
                basicMessageChannel4.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.sharedpreferences.z
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        SharedPreferencesAsyncApi.Companion.setUp$lambda$8$lambda$7(SharedPreferencesAsyncApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel4.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel5 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.setEncodedStringList" + str, getCodec(), makeBackgroundTaskQueue);
            if (sharedPreferencesAsyncApi != null) {
                basicMessageChannel5.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.sharedpreferences.k
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        SharedPreferencesAsyncApi.Companion.setUp$lambda$10$lambda$9(SharedPreferencesAsyncApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel5.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel6 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.setDeprecatedStringList" + str, getCodec(), makeBackgroundTaskQueue);
            if (sharedPreferencesAsyncApi != null) {
                basicMessageChannel6.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.sharedpreferences.l
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        SharedPreferencesAsyncApi.Companion.setUp$lambda$12$lambda$11(SharedPreferencesAsyncApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel6.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel7 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.getString" + str, getCodec(), makeBackgroundTaskQueue);
            if (sharedPreferencesAsyncApi != null) {
                basicMessageChannel7.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.sharedpreferences.m
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        SharedPreferencesAsyncApi.Companion.setUp$lambda$14$lambda$13(SharedPreferencesAsyncApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel7.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel8 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.getBool" + str, getCodec(), makeBackgroundTaskQueue);
            if (sharedPreferencesAsyncApi != null) {
                basicMessageChannel8.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.sharedpreferences.n
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        SharedPreferencesAsyncApi.Companion.setUp$lambda$16$lambda$15(SharedPreferencesAsyncApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel8.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel9 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.getDouble" + str, getCodec(), makeBackgroundTaskQueue);
            if (sharedPreferencesAsyncApi != null) {
                basicMessageChannel9.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.sharedpreferences.o
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        SharedPreferencesAsyncApi.Companion.setUp$lambda$18$lambda$17(SharedPreferencesAsyncApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel9.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel10 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.getInt" + str, getCodec(), makeBackgroundTaskQueue);
            if (sharedPreferencesAsyncApi != null) {
                basicMessageChannel10.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.sharedpreferences.p
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        SharedPreferencesAsyncApi.Companion.setUp$lambda$20$lambda$19(SharedPreferencesAsyncApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel10.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel11 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.getPlatformEncodedStringList" + str, getCodec(), makeBackgroundTaskQueue);
            if (sharedPreferencesAsyncApi != null) {
                basicMessageChannel11.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.sharedpreferences.s
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        SharedPreferencesAsyncApi.Companion.setUp$lambda$22$lambda$21(SharedPreferencesAsyncApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel11.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel12 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.getStringList" + str, getCodec(), makeBackgroundTaskQueue);
            if (sharedPreferencesAsyncApi != null) {
                basicMessageChannel12.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.sharedpreferences.t
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        SharedPreferencesAsyncApi.Companion.setUp$lambda$24$lambda$23(SharedPreferencesAsyncApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel12.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel13 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.clear" + str, getCodec(), makeBackgroundTaskQueue);
            if (sharedPreferencesAsyncApi != null) {
                basicMessageChannel13.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.sharedpreferences.u
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        SharedPreferencesAsyncApi.Companion.setUp$lambda$26$lambda$25(SharedPreferencesAsyncApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel13.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel14 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.getAll" + str, getCodec(), makeBackgroundTaskQueue);
            if (sharedPreferencesAsyncApi != null) {
                basicMessageChannel14.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.sharedpreferences.v
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        SharedPreferencesAsyncApi.Companion.setUp$lambda$28$lambda$27(SharedPreferencesAsyncApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel14.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel15 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesAsyncApi.getKeys" + str, getCodec(), makeBackgroundTaskQueue);
            if (sharedPreferencesAsyncApi != null) {
                basicMessageChannel15.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.sharedpreferences.w
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        SharedPreferencesAsyncApi.Companion.setUp$lambda$30$lambda$29(SharedPreferencesAsyncApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel15.setMessageHandler(null);
            }
        }
    }

    void clear(List<String> list, SharedPreferencesPigeonOptions sharedPreferencesPigeonOptions);

    Map<String, Object> getAll(List<String> list, SharedPreferencesPigeonOptions sharedPreferencesPigeonOptions);

    Boolean getBool(String str, SharedPreferencesPigeonOptions sharedPreferencesPigeonOptions);

    Double getDouble(String str, SharedPreferencesPigeonOptions sharedPreferencesPigeonOptions);

    Long getInt(String str, SharedPreferencesPigeonOptions sharedPreferencesPigeonOptions);

    List<String> getKeys(List<String> list, SharedPreferencesPigeonOptions sharedPreferencesPigeonOptions);

    List<String> getPlatformEncodedStringList(String str, SharedPreferencesPigeonOptions sharedPreferencesPigeonOptions);

    String getString(String str, SharedPreferencesPigeonOptions sharedPreferencesPigeonOptions);

    StringListResult getStringList(String str, SharedPreferencesPigeonOptions sharedPreferencesPigeonOptions);

    void setBool(String str, boolean z10, SharedPreferencesPigeonOptions sharedPreferencesPigeonOptions);

    void setDeprecatedStringList(String str, List<String> list, SharedPreferencesPigeonOptions sharedPreferencesPigeonOptions);

    void setDouble(String str, double d10, SharedPreferencesPigeonOptions sharedPreferencesPigeonOptions);

    void setEncodedStringList(String str, String str2, SharedPreferencesPigeonOptions sharedPreferencesPigeonOptions);

    void setInt(String str, long j10, SharedPreferencesPigeonOptions sharedPreferencesPigeonOptions);

    void setString(String str, String str2, SharedPreferencesPigeonOptions sharedPreferencesPigeonOptions);
}
