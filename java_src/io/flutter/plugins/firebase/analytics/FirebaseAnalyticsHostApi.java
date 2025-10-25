package io.flutter.plugins.firebase.analytics;

import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugins.firebase.analytics.FirebaseAnalyticsHostApi;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public interface FirebaseAnalyticsHostApi {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* loaded from: classes2.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final xc.d codec$delegate;

        static {
            xc.d a10;
            a10 = xc.f.a(new id.a() { // from class: io.flutter.plugins.firebase.analytics.e
                @Override // id.a
                public final Object invoke() {
                    GeneratedAndroidFirebaseAnalyticsPigeonCodec codec_delegate$lambda$0;
                    codec_delegate$lambda$0 = FirebaseAnalyticsHostApi.Companion.codec_delegate$lambda$0();
                    return codec_delegate$lambda$0;
                }
            });
            codec$delegate = a10;
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final GeneratedAndroidFirebaseAnalyticsPigeonCodec codec_delegate$lambda$0() {
            return new GeneratedAndroidFirebaseAnalyticsPigeonCodec();
        }

        public static /* synthetic */ void setUp$default(Companion companion, BinaryMessenger binaryMessenger, FirebaseAnalyticsHostApi firebaseAnalyticsHostApi, String str, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                str = "";
            }
            companion.setUp(binaryMessenger, firebaseAnalyticsHostApi, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$12$lambda$11(FirebaseAnalyticsHostApi firebaseAnalyticsHostApi, Object obj, final BasicMessageChannel.Reply reply) {
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            Object obj2 = ((List) obj).get(0);
            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type kotlin.Boolean");
            firebaseAnalyticsHostApi.setAnalyticsCollectionEnabled(((Boolean) obj2).booleanValue(), new id.l() { // from class: io.flutter.plugins.firebase.analytics.o
                @Override // id.l
                public final Object invoke(Object obj3) {
                    xc.t up$lambda$12$lambda$11$lambda$10;
                    up$lambda$12$lambda$11$lambda$10 = FirebaseAnalyticsHostApi.Companion.setUp$lambda$12$lambda$11$lambda$10(BasicMessageChannel.Reply.this, (xc.l) obj3);
                    return up$lambda$12$lambda$11$lambda$10;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final xc.t setUp$lambda$12$lambda$11$lambda$10(BasicMessageChannel.Reply reply, xc.l lVar) {
            Throwable d10 = xc.l.d(lVar.i());
            if (d10 != null) {
                reply.reply(GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.wrapError(d10));
            } else {
                reply.reply(GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.wrapResult(null));
            }
            return xc.t.f32733a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$15$lambda$14(FirebaseAnalyticsHostApi firebaseAnalyticsHostApi, Object obj, final BasicMessageChannel.Reply reply) {
            kotlin.jvm.internal.m.e(reply, "reply");
            firebaseAnalyticsHostApi.resetAnalyticsData(new id.l() { // from class: io.flutter.plugins.firebase.analytics.h
                @Override // id.l
                public final Object invoke(Object obj2) {
                    xc.t up$lambda$15$lambda$14$lambda$13;
                    up$lambda$15$lambda$14$lambda$13 = FirebaseAnalyticsHostApi.Companion.setUp$lambda$15$lambda$14$lambda$13(BasicMessageChannel.Reply.this, (xc.l) obj2);
                    return up$lambda$15$lambda$14$lambda$13;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final xc.t setUp$lambda$15$lambda$14$lambda$13(BasicMessageChannel.Reply reply, xc.l lVar) {
            Throwable d10 = xc.l.d(lVar.i());
            if (d10 != null) {
                reply.reply(GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.wrapError(d10));
            } else {
                reply.reply(GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.wrapResult(null));
            }
            return xc.t.f32733a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$18$lambda$17(FirebaseAnalyticsHostApi firebaseAnalyticsHostApi, Object obj, final BasicMessageChannel.Reply reply) {
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            Object obj2 = ((List) obj).get(0);
            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type kotlin.Long");
            firebaseAnalyticsHostApi.setSessionTimeoutDuration(((Long) obj2).longValue(), new id.l() { // from class: io.flutter.plugins.firebase.analytics.d
                @Override // id.l
                public final Object invoke(Object obj3) {
                    xc.t up$lambda$18$lambda$17$lambda$16;
                    up$lambda$18$lambda$17$lambda$16 = FirebaseAnalyticsHostApi.Companion.setUp$lambda$18$lambda$17$lambda$16(BasicMessageChannel.Reply.this, (xc.l) obj3);
                    return up$lambda$18$lambda$17$lambda$16;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final xc.t setUp$lambda$18$lambda$17$lambda$16(BasicMessageChannel.Reply reply, xc.l lVar) {
            Throwable d10 = xc.l.d(lVar.i());
            if (d10 != null) {
                reply.reply(GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.wrapError(d10));
            } else {
                reply.reply(GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.wrapResult(null));
            }
            return xc.t.f32733a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$21$lambda$20(FirebaseAnalyticsHostApi firebaseAnalyticsHostApi, Object obj, final BasicMessageChannel.Reply reply) {
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            Object obj2 = ((List) obj).get(0);
            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.Boolean?>");
            firebaseAnalyticsHostApi.setConsent((Map) obj2, new id.l() { // from class: io.flutter.plugins.firebase.analytics.m
                @Override // id.l
                public final Object invoke(Object obj3) {
                    xc.t up$lambda$21$lambda$20$lambda$19;
                    up$lambda$21$lambda$20$lambda$19 = FirebaseAnalyticsHostApi.Companion.setUp$lambda$21$lambda$20$lambda$19(BasicMessageChannel.Reply.this, (xc.l) obj3);
                    return up$lambda$21$lambda$20$lambda$19;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final xc.t setUp$lambda$21$lambda$20$lambda$19(BasicMessageChannel.Reply reply, xc.l lVar) {
            Throwable d10 = xc.l.d(lVar.i());
            if (d10 != null) {
                reply.reply(GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.wrapError(d10));
            } else {
                reply.reply(GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.wrapResult(null));
            }
            return xc.t.f32733a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$24$lambda$23(FirebaseAnalyticsHostApi firebaseAnalyticsHostApi, Object obj, final BasicMessageChannel.Reply reply) {
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            firebaseAnalyticsHostApi.setDefaultEventParameters((Map) ((List) obj).get(0), new id.l() { // from class: io.flutter.plugins.firebase.analytics.c
                @Override // id.l
                public final Object invoke(Object obj2) {
                    xc.t up$lambda$24$lambda$23$lambda$22;
                    up$lambda$24$lambda$23$lambda$22 = FirebaseAnalyticsHostApi.Companion.setUp$lambda$24$lambda$23$lambda$22(BasicMessageChannel.Reply.this, (xc.l) obj2);
                    return up$lambda$24$lambda$23$lambda$22;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final xc.t setUp$lambda$24$lambda$23$lambda$22(BasicMessageChannel.Reply reply, xc.l lVar) {
            Throwable d10 = xc.l.d(lVar.i());
            if (d10 != null) {
                reply.reply(GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.wrapError(d10));
            } else {
                reply.reply(GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.wrapResult(null));
            }
            return xc.t.f32733a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$27$lambda$26(FirebaseAnalyticsHostApi firebaseAnalyticsHostApi, Object obj, final BasicMessageChannel.Reply reply) {
            kotlin.jvm.internal.m.e(reply, "reply");
            firebaseAnalyticsHostApi.getAppInstanceId(new id.l() { // from class: io.flutter.plugins.firebase.analytics.j
                @Override // id.l
                public final Object invoke(Object obj2) {
                    xc.t up$lambda$27$lambda$26$lambda$25;
                    up$lambda$27$lambda$26$lambda$25 = FirebaseAnalyticsHostApi.Companion.setUp$lambda$27$lambda$26$lambda$25(BasicMessageChannel.Reply.this, (xc.l) obj2);
                    return up$lambda$27$lambda$26$lambda$25;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final xc.t setUp$lambda$27$lambda$26$lambda$25(BasicMessageChannel.Reply reply, xc.l lVar) {
            Throwable d10 = xc.l.d(lVar.i());
            if (d10 != null) {
                reply.reply(GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.wrapError(d10));
            } else {
                Object i10 = lVar.i();
                if (xc.l.f(i10)) {
                    i10 = null;
                }
                reply.reply(GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.wrapResult((String) i10));
            }
            return xc.t.f32733a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$3$lambda$2(FirebaseAnalyticsHostApi firebaseAnalyticsHostApi, Object obj, final BasicMessageChannel.Reply reply) {
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            Object obj2 = ((List) obj).get(0);
            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.Any?>");
            firebaseAnalyticsHostApi.logEvent((Map) obj2, new id.l() { // from class: io.flutter.plugins.firebase.analytics.g
                @Override // id.l
                public final Object invoke(Object obj3) {
                    xc.t up$lambda$3$lambda$2$lambda$1;
                    up$lambda$3$lambda$2$lambda$1 = FirebaseAnalyticsHostApi.Companion.setUp$lambda$3$lambda$2$lambda$1(BasicMessageChannel.Reply.this, (xc.l) obj3);
                    return up$lambda$3$lambda$2$lambda$1;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final xc.t setUp$lambda$3$lambda$2$lambda$1(BasicMessageChannel.Reply reply, xc.l lVar) {
            Throwable d10 = xc.l.d(lVar.i());
            if (d10 != null) {
                reply.reply(GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.wrapError(d10));
            } else {
                reply.reply(GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.wrapResult(null));
            }
            return xc.t.f32733a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$30$lambda$29(FirebaseAnalyticsHostApi firebaseAnalyticsHostApi, Object obj, final BasicMessageChannel.Reply reply) {
            kotlin.jvm.internal.m.e(reply, "reply");
            firebaseAnalyticsHostApi.getSessionId(new id.l() { // from class: io.flutter.plugins.firebase.analytics.i
                @Override // id.l
                public final Object invoke(Object obj2) {
                    xc.t up$lambda$30$lambda$29$lambda$28;
                    up$lambda$30$lambda$29$lambda$28 = FirebaseAnalyticsHostApi.Companion.setUp$lambda$30$lambda$29$lambda$28(BasicMessageChannel.Reply.this, (xc.l) obj2);
                    return up$lambda$30$lambda$29$lambda$28;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final xc.t setUp$lambda$30$lambda$29$lambda$28(BasicMessageChannel.Reply reply, xc.l lVar) {
            Throwable d10 = xc.l.d(lVar.i());
            if (d10 != null) {
                reply.reply(GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.wrapError(d10));
            } else {
                Object i10 = lVar.i();
                if (xc.l.f(i10)) {
                    i10 = null;
                }
                reply.reply(GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.wrapResult((Long) i10));
            }
            return xc.t.f32733a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$33$lambda$32(FirebaseAnalyticsHostApi firebaseAnalyticsHostApi, Object obj, final BasicMessageChannel.Reply reply) {
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            Object obj2 = ((List) obj).get(0);
            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String?>");
            firebaseAnalyticsHostApi.initiateOnDeviceConversionMeasurement((Map) obj2, new id.l() { // from class: io.flutter.plugins.firebase.analytics.f
                @Override // id.l
                public final Object invoke(Object obj3) {
                    xc.t up$lambda$33$lambda$32$lambda$31;
                    up$lambda$33$lambda$32$lambda$31 = FirebaseAnalyticsHostApi.Companion.setUp$lambda$33$lambda$32$lambda$31(BasicMessageChannel.Reply.this, (xc.l) obj3);
                    return up$lambda$33$lambda$32$lambda$31;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final xc.t setUp$lambda$33$lambda$32$lambda$31(BasicMessageChannel.Reply reply, xc.l lVar) {
            Throwable d10 = xc.l.d(lVar.i());
            if (d10 != null) {
                reply.reply(GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.wrapError(d10));
            } else {
                reply.reply(GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.wrapResult(null));
            }
            return xc.t.f32733a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$6$lambda$5(FirebaseAnalyticsHostApi firebaseAnalyticsHostApi, Object obj, final BasicMessageChannel.Reply reply) {
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            firebaseAnalyticsHostApi.setUserId((String) ((List) obj).get(0), new id.l() { // from class: io.flutter.plugins.firebase.analytics.k
                @Override // id.l
                public final Object invoke(Object obj2) {
                    xc.t up$lambda$6$lambda$5$lambda$4;
                    up$lambda$6$lambda$5$lambda$4 = FirebaseAnalyticsHostApi.Companion.setUp$lambda$6$lambda$5$lambda$4(BasicMessageChannel.Reply.this, (xc.l) obj2);
                    return up$lambda$6$lambda$5$lambda$4;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final xc.t setUp$lambda$6$lambda$5$lambda$4(BasicMessageChannel.Reply reply, xc.l lVar) {
            Throwable d10 = xc.l.d(lVar.i());
            if (d10 != null) {
                reply.reply(GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.wrapError(d10));
            } else {
                reply.reply(GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.wrapResult(null));
            }
            return xc.t.f32733a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$9$lambda$8(FirebaseAnalyticsHostApi firebaseAnalyticsHostApi, Object obj, final BasicMessageChannel.Reply reply) {
            kotlin.jvm.internal.m.e(reply, "reply");
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type kotlin.String");
            firebaseAnalyticsHostApi.setUserProperty((String) obj2, (String) list.get(1), new id.l() { // from class: io.flutter.plugins.firebase.analytics.n
                @Override // id.l
                public final Object invoke(Object obj3) {
                    xc.t up$lambda$9$lambda$8$lambda$7;
                    up$lambda$9$lambda$8$lambda$7 = FirebaseAnalyticsHostApi.Companion.setUp$lambda$9$lambda$8$lambda$7(BasicMessageChannel.Reply.this, (xc.l) obj3);
                    return up$lambda$9$lambda$8$lambda$7;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final xc.t setUp$lambda$9$lambda$8$lambda$7(BasicMessageChannel.Reply reply, xc.l lVar) {
            Throwable d10 = xc.l.d(lVar.i());
            if (d10 != null) {
                reply.reply(GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.wrapError(d10));
            } else {
                reply.reply(GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.wrapResult(null));
            }
            return xc.t.f32733a;
        }

        public final MessageCodec<Object> getCodec() {
            return (MessageCodec) codec$delegate.getValue();
        }

        public final void setUp(BinaryMessenger binaryMessenger, FirebaseAnalyticsHostApi firebaseAnalyticsHostApi) {
            kotlin.jvm.internal.m.e(binaryMessenger, "binaryMessenger");
            setUp$default(this, binaryMessenger, firebaseAnalyticsHostApi, null, 4, null);
        }

        public final void setUp(BinaryMessenger binaryMessenger, final FirebaseAnalyticsHostApi firebaseAnalyticsHostApi, String messageChannelSuffix) {
            String str;
            kotlin.jvm.internal.m.e(binaryMessenger, "binaryMessenger");
            kotlin.jvm.internal.m.e(messageChannelSuffix, "messageChannelSuffix");
            if (messageChannelSuffix.length() > 0) {
                str = "." + messageChannelSuffix;
            } else {
                str = "";
            }
            BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.firebase_analytics_platform_interface.FirebaseAnalyticsHostApi.logEvent" + str, getCodec());
            if (firebaseAnalyticsHostApi != null) {
                basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.firebase.analytics.a
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        FirebaseAnalyticsHostApi.Companion.setUp$lambda$3$lambda$2(FirebaseAnalyticsHostApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.firebase_analytics_platform_interface.FirebaseAnalyticsHostApi.setUserId" + str, getCodec());
            if (firebaseAnalyticsHostApi != null) {
                basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.firebase.analytics.p
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        FirebaseAnalyticsHostApi.Companion.setUp$lambda$6$lambda$5(FirebaseAnalyticsHostApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel2.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel3 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.firebase_analytics_platform_interface.FirebaseAnalyticsHostApi.setUserProperty" + str, getCodec());
            if (firebaseAnalyticsHostApi != null) {
                basicMessageChannel3.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.firebase.analytics.q
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        FirebaseAnalyticsHostApi.Companion.setUp$lambda$9$lambda$8(FirebaseAnalyticsHostApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel3.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel4 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.firebase_analytics_platform_interface.FirebaseAnalyticsHostApi.setAnalyticsCollectionEnabled" + str, getCodec());
            if (firebaseAnalyticsHostApi != null) {
                basicMessageChannel4.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.firebase.analytics.s
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        FirebaseAnalyticsHostApi.Companion.setUp$lambda$12$lambda$11(FirebaseAnalyticsHostApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel4.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel5 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.firebase_analytics_platform_interface.FirebaseAnalyticsHostApi.resetAnalyticsData" + str, getCodec());
            if (firebaseAnalyticsHostApi != null) {
                basicMessageChannel5.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.firebase.analytics.t
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        FirebaseAnalyticsHostApi.Companion.setUp$lambda$15$lambda$14(FirebaseAnalyticsHostApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel5.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel6 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.firebase_analytics_platform_interface.FirebaseAnalyticsHostApi.setSessionTimeoutDuration" + str, getCodec());
            if (firebaseAnalyticsHostApi != null) {
                basicMessageChannel6.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.firebase.analytics.u
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        FirebaseAnalyticsHostApi.Companion.setUp$lambda$18$lambda$17(FirebaseAnalyticsHostApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel6.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel7 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.firebase_analytics_platform_interface.FirebaseAnalyticsHostApi.setConsent" + str, getCodec());
            if (firebaseAnalyticsHostApi != null) {
                basicMessageChannel7.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.firebase.analytics.v
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        FirebaseAnalyticsHostApi.Companion.setUp$lambda$21$lambda$20(FirebaseAnalyticsHostApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel7.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel8 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.firebase_analytics_platform_interface.FirebaseAnalyticsHostApi.setDefaultEventParameters" + str, getCodec());
            if (firebaseAnalyticsHostApi != null) {
                basicMessageChannel8.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.firebase.analytics.w
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        FirebaseAnalyticsHostApi.Companion.setUp$lambda$24$lambda$23(FirebaseAnalyticsHostApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel8.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel9 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.firebase_analytics_platform_interface.FirebaseAnalyticsHostApi.getAppInstanceId" + str, getCodec());
            if (firebaseAnalyticsHostApi != null) {
                basicMessageChannel9.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.firebase.analytics.x
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        FirebaseAnalyticsHostApi.Companion.setUp$lambda$27$lambda$26(FirebaseAnalyticsHostApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel9.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel10 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.firebase_analytics_platform_interface.FirebaseAnalyticsHostApi.getSessionId" + str, getCodec());
            if (firebaseAnalyticsHostApi != null) {
                basicMessageChannel10.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.firebase.analytics.b
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        FirebaseAnalyticsHostApi.Companion.setUp$lambda$30$lambda$29(FirebaseAnalyticsHostApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel10.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel11 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.firebase_analytics_platform_interface.FirebaseAnalyticsHostApi.initiateOnDeviceConversionMeasurement" + str, getCodec());
            if (firebaseAnalyticsHostApi != null) {
                basicMessageChannel11.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.firebase.analytics.l
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        FirebaseAnalyticsHostApi.Companion.setUp$lambda$33$lambda$32(FirebaseAnalyticsHostApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel11.setMessageHandler(null);
            }
        }
    }

    void getAppInstanceId(id.l lVar);

    void getSessionId(id.l lVar);

    void initiateOnDeviceConversionMeasurement(Map<String, String> map, id.l lVar);

    void logEvent(Map<String, ? extends Object> map, id.l lVar);

    void resetAnalyticsData(id.l lVar);

    void setAnalyticsCollectionEnabled(boolean z10, id.l lVar);

    void setConsent(Map<String, Boolean> map, id.l lVar);

    void setDefaultEventParameters(Map<String, ? extends Object> map, id.l lVar);

    void setSessionTimeoutDuration(long j10, id.l lVar);

    void setUserId(String str, id.l lVar);

    void setUserProperty(String str, String str2, id.l lVar);
}
