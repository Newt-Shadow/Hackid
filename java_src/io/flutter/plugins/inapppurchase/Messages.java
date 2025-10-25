package io.flutter.plugins.inapppurchase;

import android.util.Log;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugins.inapppurchase.Messages;
import java.io.ByteArrayOutputStream;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public class Messages {

    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes2.dex */
    @interface CanIgnoreReturnValue {
    }

    /* loaded from: classes2.dex */
    public static class FlutterError extends RuntimeException {
        public final String code;
        public final Object details;

        public FlutterError(String str, String str2, Object obj) {
            super(str2);
            this.code = str;
            this.details = obj;
        }
    }

    /* loaded from: classes2.dex */
    public interface InAppPurchaseApi {
        static MessageCodec<Object> getCodec() {
            return PigeonCodec.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setUp$0(InAppPurchaseApi inAppPurchaseApi, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                arrayList.add(0, inAppPurchaseApi.isReady());
            } catch (Throwable th) {
                arrayList = Messages.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setUp$1(InAppPurchaseApi inAppPurchaseApi, Object obj, final BasicMessageChannel.Reply reply) {
            final ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = (ArrayList) obj;
            inAppPurchaseApi.startConnection((Long) arrayList2.get(0), (PlatformBillingChoiceMode) arrayList2.get(1), new Result<PlatformBillingResult>() { // from class: io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi.1
                @Override // io.flutter.plugins.inapppurchase.Messages.Result
                public void error(Throwable th) {
                    reply.reply(Messages.wrapError(th));
                }

                @Override // io.flutter.plugins.inapppurchase.Messages.Result
                public void success(PlatformBillingResult platformBillingResult) {
                    arrayList.add(0, platformBillingResult);
                    reply.reply(arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setUp$10(InAppPurchaseApi inAppPurchaseApi, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                arrayList.add(0, inAppPurchaseApi.isFeatureSupported((String) ((ArrayList) obj).get(0)));
            } catch (Throwable th) {
                arrayList = Messages.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setUp$11(InAppPurchaseApi inAppPurchaseApi, Object obj, final BasicMessageChannel.Reply reply) {
            final ArrayList arrayList = new ArrayList();
            inAppPurchaseApi.isAlternativeBillingOnlyAvailableAsync(new Result<PlatformBillingResult>() { // from class: io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi.8
                @Override // io.flutter.plugins.inapppurchase.Messages.Result
                public void error(Throwable th) {
                    reply.reply(Messages.wrapError(th));
                }

                @Override // io.flutter.plugins.inapppurchase.Messages.Result
                public void success(PlatformBillingResult platformBillingResult) {
                    arrayList.add(0, platformBillingResult);
                    reply.reply(arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setUp$12(InAppPurchaseApi inAppPurchaseApi, Object obj, final BasicMessageChannel.Reply reply) {
            final ArrayList arrayList = new ArrayList();
            inAppPurchaseApi.showAlternativeBillingOnlyInformationDialog(new Result<PlatformBillingResult>() { // from class: io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi.9
                @Override // io.flutter.plugins.inapppurchase.Messages.Result
                public void error(Throwable th) {
                    reply.reply(Messages.wrapError(th));
                }

                @Override // io.flutter.plugins.inapppurchase.Messages.Result
                public void success(PlatformBillingResult platformBillingResult) {
                    arrayList.add(0, platformBillingResult);
                    reply.reply(arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setUp$13(InAppPurchaseApi inAppPurchaseApi, Object obj, final BasicMessageChannel.Reply reply) {
            final ArrayList arrayList = new ArrayList();
            inAppPurchaseApi.createAlternativeBillingOnlyReportingDetailsAsync(new Result<PlatformAlternativeBillingOnlyReportingDetailsResponse>() { // from class: io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi.10
                @Override // io.flutter.plugins.inapppurchase.Messages.Result
                public void error(Throwable th) {
                    reply.reply(Messages.wrapError(th));
                }

                @Override // io.flutter.plugins.inapppurchase.Messages.Result
                public void success(PlatformAlternativeBillingOnlyReportingDetailsResponse platformAlternativeBillingOnlyReportingDetailsResponse) {
                    arrayList.add(0, platformAlternativeBillingOnlyReportingDetailsResponse);
                    reply.reply(arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setUp$2(InAppPurchaseApi inAppPurchaseApi, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                inAppPurchaseApi.endConnection();
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Messages.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setUp$3(InAppPurchaseApi inAppPurchaseApi, Object obj, final BasicMessageChannel.Reply reply) {
            final ArrayList arrayList = new ArrayList();
            inAppPurchaseApi.getBillingConfigAsync(new Result<PlatformBillingConfigResponse>() { // from class: io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi.2
                @Override // io.flutter.plugins.inapppurchase.Messages.Result
                public void error(Throwable th) {
                    reply.reply(Messages.wrapError(th));
                }

                @Override // io.flutter.plugins.inapppurchase.Messages.Result
                public void success(PlatformBillingConfigResponse platformBillingConfigResponse) {
                    arrayList.add(0, platformBillingConfigResponse);
                    reply.reply(arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setUp$4(InAppPurchaseApi inAppPurchaseApi, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                arrayList.add(0, inAppPurchaseApi.launchBillingFlow((PlatformBillingFlowParams) ((ArrayList) obj).get(0)));
            } catch (Throwable th) {
                arrayList = Messages.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setUp$5(InAppPurchaseApi inAppPurchaseApi, Object obj, final BasicMessageChannel.Reply reply) {
            final ArrayList arrayList = new ArrayList();
            inAppPurchaseApi.acknowledgePurchase((String) ((ArrayList) obj).get(0), new Result<PlatformBillingResult>() { // from class: io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi.3
                @Override // io.flutter.plugins.inapppurchase.Messages.Result
                public void error(Throwable th) {
                    reply.reply(Messages.wrapError(th));
                }

                @Override // io.flutter.plugins.inapppurchase.Messages.Result
                public void success(PlatformBillingResult platformBillingResult) {
                    arrayList.add(0, platformBillingResult);
                    reply.reply(arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setUp$6(InAppPurchaseApi inAppPurchaseApi, Object obj, final BasicMessageChannel.Reply reply) {
            final ArrayList arrayList = new ArrayList();
            inAppPurchaseApi.consumeAsync((String) ((ArrayList) obj).get(0), new Result<PlatformBillingResult>() { // from class: io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi.4
                @Override // io.flutter.plugins.inapppurchase.Messages.Result
                public void error(Throwable th) {
                    reply.reply(Messages.wrapError(th));
                }

                @Override // io.flutter.plugins.inapppurchase.Messages.Result
                public void success(PlatformBillingResult platformBillingResult) {
                    arrayList.add(0, platformBillingResult);
                    reply.reply(arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setUp$7(InAppPurchaseApi inAppPurchaseApi, Object obj, final BasicMessageChannel.Reply reply) {
            final ArrayList arrayList = new ArrayList();
            inAppPurchaseApi.queryPurchasesAsync((PlatformProductType) ((ArrayList) obj).get(0), new Result<PlatformPurchasesResponse>() { // from class: io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi.5
                @Override // io.flutter.plugins.inapppurchase.Messages.Result
                public void error(Throwable th) {
                    reply.reply(Messages.wrapError(th));
                }

                @Override // io.flutter.plugins.inapppurchase.Messages.Result
                public void success(PlatformPurchasesResponse platformPurchasesResponse) {
                    arrayList.add(0, platformPurchasesResponse);
                    reply.reply(arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setUp$8(InAppPurchaseApi inAppPurchaseApi, Object obj, final BasicMessageChannel.Reply reply) {
            final ArrayList arrayList = new ArrayList();
            inAppPurchaseApi.queryPurchaseHistoryAsync((PlatformProductType) ((ArrayList) obj).get(0), new Result<PlatformPurchaseHistoryResponse>() { // from class: io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi.6
                @Override // io.flutter.plugins.inapppurchase.Messages.Result
                public void error(Throwable th) {
                    reply.reply(Messages.wrapError(th));
                }

                @Override // io.flutter.plugins.inapppurchase.Messages.Result
                public void success(PlatformPurchaseHistoryResponse platformPurchaseHistoryResponse) {
                    arrayList.add(0, platformPurchaseHistoryResponse);
                    reply.reply(arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setUp$9(InAppPurchaseApi inAppPurchaseApi, Object obj, final BasicMessageChannel.Reply reply) {
            final ArrayList arrayList = new ArrayList();
            inAppPurchaseApi.queryProductDetailsAsync((List) ((ArrayList) obj).get(0), new Result<PlatformProductDetailsResponse>() { // from class: io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi.7
                @Override // io.flutter.plugins.inapppurchase.Messages.Result
                public void error(Throwable th) {
                    reply.reply(Messages.wrapError(th));
                }

                @Override // io.flutter.plugins.inapppurchase.Messages.Result
                public void success(PlatformProductDetailsResponse platformProductDetailsResponse) {
                    arrayList.add(0, platformProductDetailsResponse);
                    reply.reply(arrayList);
                }
            });
        }

        static void setUp(BinaryMessenger binaryMessenger, InAppPurchaseApi inAppPurchaseApi) {
            setUp(binaryMessenger, "", inAppPurchaseApi);
        }

        void acknowledgePurchase(String str, Result<PlatformBillingResult> result);

        void consumeAsync(String str, Result<PlatformBillingResult> result);

        void createAlternativeBillingOnlyReportingDetailsAsync(Result<PlatformAlternativeBillingOnlyReportingDetailsResponse> result);

        void endConnection();

        void getBillingConfigAsync(Result<PlatformBillingConfigResponse> result);

        void isAlternativeBillingOnlyAvailableAsync(Result<PlatformBillingResult> result);

        Boolean isFeatureSupported(String str);

        Boolean isReady();

        PlatformBillingResult launchBillingFlow(PlatformBillingFlowParams platformBillingFlowParams);

        void queryProductDetailsAsync(List<PlatformQueryProduct> list, Result<PlatformProductDetailsResponse> result);

        void queryPurchaseHistoryAsync(PlatformProductType platformProductType, Result<PlatformPurchaseHistoryResponse> result);

        void queryPurchasesAsync(PlatformProductType platformProductType, Result<PlatformPurchasesResponse> result);

        void showAlternativeBillingOnlyInformationDialog(Result<PlatformBillingResult> result);

        void startConnection(Long l10, PlatformBillingChoiceMode platformBillingChoiceMode, Result<PlatformBillingResult> result);

        static void setUp(BinaryMessenger binaryMessenger, String str, final InAppPurchaseApi inAppPurchaseApi) {
            String str2;
            if (str.isEmpty()) {
                str2 = "";
            } else {
                str2 = "." + str;
            }
            BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.in_app_purchase_android.InAppPurchaseApi.isReady" + str2, getCodec());
            if (inAppPurchaseApi != null) {
                basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.inapppurchase.b
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.InAppPurchaseApi.lambda$setUp$0(Messages.InAppPurchaseApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.in_app_purchase_android.InAppPurchaseApi.startConnection" + str2, getCodec());
            if (inAppPurchaseApi != null) {
                basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.inapppurchase.k
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.InAppPurchaseApi.lambda$setUp$1(Messages.InAppPurchaseApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel2.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel3 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.in_app_purchase_android.InAppPurchaseApi.endConnection" + str2, getCodec());
            if (inAppPurchaseApi != null) {
                basicMessageChannel3.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.inapppurchase.l
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.InAppPurchaseApi.lambda$setUp$2(Messages.InAppPurchaseApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel3.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel4 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.in_app_purchase_android.InAppPurchaseApi.getBillingConfigAsync" + str2, getCodec());
            if (inAppPurchaseApi != null) {
                basicMessageChannel4.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.inapppurchase.m
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.InAppPurchaseApi.lambda$setUp$3(Messages.InAppPurchaseApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel4.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel5 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.in_app_purchase_android.InAppPurchaseApi.launchBillingFlow" + str2, getCodec());
            if (inAppPurchaseApi != null) {
                basicMessageChannel5.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.inapppurchase.n
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.InAppPurchaseApi.lambda$setUp$4(Messages.InAppPurchaseApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel5.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel6 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.in_app_purchase_android.InAppPurchaseApi.acknowledgePurchase" + str2, getCodec());
            if (inAppPurchaseApi != null) {
                basicMessageChannel6.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.inapppurchase.o
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.InAppPurchaseApi.lambda$setUp$5(Messages.InAppPurchaseApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel6.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel7 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.in_app_purchase_android.InAppPurchaseApi.consumeAsync" + str2, getCodec());
            if (inAppPurchaseApi != null) {
                basicMessageChannel7.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.inapppurchase.c
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.InAppPurchaseApi.lambda$setUp$6(Messages.InAppPurchaseApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel7.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel8 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.in_app_purchase_android.InAppPurchaseApi.queryPurchasesAsync" + str2, getCodec());
            if (inAppPurchaseApi != null) {
                basicMessageChannel8.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.inapppurchase.d
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.InAppPurchaseApi.lambda$setUp$7(Messages.InAppPurchaseApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel8.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel9 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.in_app_purchase_android.InAppPurchaseApi.queryPurchaseHistoryAsync" + str2, getCodec());
            if (inAppPurchaseApi != null) {
                basicMessageChannel9.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.inapppurchase.e
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.InAppPurchaseApi.lambda$setUp$8(Messages.InAppPurchaseApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel9.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel10 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.in_app_purchase_android.InAppPurchaseApi.queryProductDetailsAsync" + str2, getCodec());
            if (inAppPurchaseApi != null) {
                basicMessageChannel10.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.inapppurchase.f
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.InAppPurchaseApi.lambda$setUp$9(Messages.InAppPurchaseApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel10.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel11 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.in_app_purchase_android.InAppPurchaseApi.isFeatureSupported" + str2, getCodec());
            if (inAppPurchaseApi != null) {
                basicMessageChannel11.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.inapppurchase.g
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.InAppPurchaseApi.lambda$setUp$10(Messages.InAppPurchaseApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel11.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel12 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.in_app_purchase_android.InAppPurchaseApi.isAlternativeBillingOnlyAvailableAsync" + str2, getCodec());
            if (inAppPurchaseApi != null) {
                basicMessageChannel12.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.inapppurchase.h
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.InAppPurchaseApi.lambda$setUp$11(Messages.InAppPurchaseApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel12.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel13 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.in_app_purchase_android.InAppPurchaseApi.showAlternativeBillingOnlyInformationDialog" + str2, getCodec());
            if (inAppPurchaseApi != null) {
                basicMessageChannel13.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.inapppurchase.i
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.InAppPurchaseApi.lambda$setUp$12(Messages.InAppPurchaseApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel13.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel14 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.in_app_purchase_android.InAppPurchaseApi.createAlternativeBillingOnlyReportingDetailsAsync" + str2, getCodec());
            if (inAppPurchaseApi != null) {
                basicMessageChannel14.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.inapppurchase.j
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.InAppPurchaseApi.lambda$setUp$13(Messages.InAppPurchaseApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel14.setMessageHandler(null);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class InAppPurchaseCallbackApi {
        private final BinaryMessenger binaryMessenger;
        private final String messageChannelSuffix;

        public InAppPurchaseCallbackApi(BinaryMessenger binaryMessenger) {
            this(binaryMessenger, "");
        }

        static MessageCodec<Object> getCodec() {
            return PigeonCodec.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onBillingServiceDisconnected$0(VoidResult voidResult, String str, Object obj) {
            if (obj instanceof List) {
                List list = (List) obj;
                if (list.size() > 1) {
                    voidResult.error(new FlutterError((String) list.get(0), (String) list.get(1), list.get(2)));
                    return;
                } else {
                    voidResult.success();
                    return;
                }
            }
            voidResult.error(Messages.createConnectionError(str));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onPurchasesUpdated$1(VoidResult voidResult, String str, Object obj) {
            if (obj instanceof List) {
                List list = (List) obj;
                if (list.size() > 1) {
                    voidResult.error(new FlutterError((String) list.get(0), (String) list.get(1), list.get(2)));
                    return;
                } else {
                    voidResult.success();
                    return;
                }
            }
            voidResult.error(Messages.createConnectionError(str));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$userSelectedalternativeBilling$2(VoidResult voidResult, String str, Object obj) {
            if (obj instanceof List) {
                List list = (List) obj;
                if (list.size() > 1) {
                    voidResult.error(new FlutterError((String) list.get(0), (String) list.get(1), list.get(2)));
                    return;
                } else {
                    voidResult.success();
                    return;
                }
            }
            voidResult.error(Messages.createConnectionError(str));
        }

        public void onBillingServiceDisconnected(Long l10, final VoidResult voidResult) {
            final String str = "dev.flutter.pigeon.in_app_purchase_android.InAppPurchaseCallbackApi.onBillingServiceDisconnected" + this.messageChannelSuffix;
            new BasicMessageChannel(this.binaryMessenger, str, getCodec()).send(new ArrayList(Collections.singletonList(l10)), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.inapppurchase.s
                @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                public final void reply(Object obj) {
                    Messages.InAppPurchaseCallbackApi.lambda$onBillingServiceDisconnected$0(Messages.VoidResult.this, str, obj);
                }
            });
        }

        public void onPurchasesUpdated(PlatformPurchasesResponse platformPurchasesResponse, final VoidResult voidResult) {
            final String str = "dev.flutter.pigeon.in_app_purchase_android.InAppPurchaseCallbackApi.onPurchasesUpdated" + this.messageChannelSuffix;
            new BasicMessageChannel(this.binaryMessenger, str, getCodec()).send(new ArrayList(Collections.singletonList(platformPurchasesResponse)), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.inapppurchase.p
                @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                public final void reply(Object obj) {
                    Messages.InAppPurchaseCallbackApi.lambda$onPurchasesUpdated$1(Messages.VoidResult.this, str, obj);
                }
            });
        }

        public void userSelectedalternativeBilling(PlatformUserChoiceDetails platformUserChoiceDetails, final VoidResult voidResult) {
            final String str = "dev.flutter.pigeon.in_app_purchase_android.InAppPurchaseCallbackApi.userSelectedalternativeBilling" + this.messageChannelSuffix;
            new BasicMessageChannel(this.binaryMessenger, str, getCodec()).send(new ArrayList(Collections.singletonList(platformUserChoiceDetails)), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.inapppurchase.q
                @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                public final void reply(Object obj) {
                    Messages.InAppPurchaseCallbackApi.lambda$userSelectedalternativeBilling$2(Messages.VoidResult.this, str, obj);
                }
            });
        }

        public InAppPurchaseCallbackApi(BinaryMessenger binaryMessenger, String str) {
            String str2;
            this.binaryMessenger = binaryMessenger;
            if (str.isEmpty()) {
                str2 = "";
            } else {
                str2 = "." + str;
            }
            this.messageChannelSuffix = str2;
        }
    }

    /* loaded from: classes2.dex */
    public interface NullableResult<T> {
        void error(Throwable th);

        void success(T t10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class PigeonCodec extends StandardMessageCodec {
        public static final PigeonCodec INSTANCE = new PigeonCodec();

        private PigeonCodec() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.flutter.plugin.common.StandardMessageCodec
        public Object readValueOfType(byte b10, ByteBuffer byteBuffer) {
            switch (b10) {
                case -127:
                    Object readValue = readValue(byteBuffer);
                    if (readValue == null) {
                        return null;
                    }
                    return PlatformProductType.values()[((Long) readValue).intValue()];
                case -126:
                    Object readValue2 = readValue(byteBuffer);
                    if (readValue2 == null) {
                        return null;
                    }
                    return PlatformBillingChoiceMode.values()[((Long) readValue2).intValue()];
                case -125:
                    Object readValue3 = readValue(byteBuffer);
                    if (readValue3 == null) {
                        return null;
                    }
                    return PlatformPurchaseState.values()[((Long) readValue3).intValue()];
                case -124:
                    Object readValue4 = readValue(byteBuffer);
                    if (readValue4 == null) {
                        return null;
                    }
                    return PlatformRecurrenceMode.values()[((Long) readValue4).intValue()];
                case -123:
                    return PlatformQueryProduct.fromList((ArrayList) readValue(byteBuffer));
                case -122:
                    return PlatformAccountIdentifiers.fromList((ArrayList) readValue(byteBuffer));
                case -121:
                    return PlatformBillingResult.fromList((ArrayList) readValue(byteBuffer));
                case -120:
                    return PlatformOneTimePurchaseOfferDetails.fromList((ArrayList) readValue(byteBuffer));
                case -119:
                    return PlatformProductDetails.fromList((ArrayList) readValue(byteBuffer));
                case -118:
                    return PlatformProductDetailsResponse.fromList((ArrayList) readValue(byteBuffer));
                case -117:
                    return PlatformAlternativeBillingOnlyReportingDetailsResponse.fromList((ArrayList) readValue(byteBuffer));
                case -116:
                    return PlatformBillingConfigResponse.fromList((ArrayList) readValue(byteBuffer));
                case -115:
                    return PlatformBillingFlowParams.fromList((ArrayList) readValue(byteBuffer));
                case -114:
                    return PlatformPricingPhase.fromList((ArrayList) readValue(byteBuffer));
                case -113:
                    return PlatformPurchase.fromList((ArrayList) readValue(byteBuffer));
                case -112:
                    return PlatformPurchaseHistoryRecord.fromList((ArrayList) readValue(byteBuffer));
                case -111:
                    return PlatformPurchaseHistoryResponse.fromList((ArrayList) readValue(byteBuffer));
                case -110:
                    return PlatformPurchasesResponse.fromList((ArrayList) readValue(byteBuffer));
                case -109:
                    return PlatformSubscriptionOfferDetails.fromList((ArrayList) readValue(byteBuffer));
                case -108:
                    return PlatformUserChoiceDetails.fromList((ArrayList) readValue(byteBuffer));
                case -107:
                    return PlatformUserChoiceProduct.fromList((ArrayList) readValue(byteBuffer));
                default:
                    return super.readValueOfType(b10, byteBuffer);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.flutter.plugin.common.StandardMessageCodec
        public void writeValue(ByteArrayOutputStream byteArrayOutputStream, Object obj) {
            Integer num = null;
            if (obj instanceof PlatformProductType) {
                byteArrayOutputStream.write(129);
                if (obj != null) {
                    num = Integer.valueOf(((PlatformProductType) obj).index);
                }
                writeValue(byteArrayOutputStream, num);
            } else if (obj instanceof PlatformBillingChoiceMode) {
                byteArrayOutputStream.write(130);
                if (obj != null) {
                    num = Integer.valueOf(((PlatformBillingChoiceMode) obj).index);
                }
                writeValue(byteArrayOutputStream, num);
            } else if (obj instanceof PlatformPurchaseState) {
                byteArrayOutputStream.write(131);
                if (obj != null) {
                    num = Integer.valueOf(((PlatformPurchaseState) obj).index);
                }
                writeValue(byteArrayOutputStream, num);
            } else if (obj instanceof PlatformRecurrenceMode) {
                byteArrayOutputStream.write(132);
                if (obj != null) {
                    num = Integer.valueOf(((PlatformRecurrenceMode) obj).index);
                }
                writeValue(byteArrayOutputStream, num);
            } else if (obj instanceof PlatformQueryProduct) {
                byteArrayOutputStream.write(133);
                writeValue(byteArrayOutputStream, ((PlatformQueryProduct) obj).toList());
            } else if (obj instanceof PlatformAccountIdentifiers) {
                byteArrayOutputStream.write(134);
                writeValue(byteArrayOutputStream, ((PlatformAccountIdentifiers) obj).toList());
            } else if (obj instanceof PlatformBillingResult) {
                byteArrayOutputStream.write(135);
                writeValue(byteArrayOutputStream, ((PlatformBillingResult) obj).toList());
            } else if (obj instanceof PlatformOneTimePurchaseOfferDetails) {
                byteArrayOutputStream.write(136);
                writeValue(byteArrayOutputStream, ((PlatformOneTimePurchaseOfferDetails) obj).toList());
            } else if (obj instanceof PlatformProductDetails) {
                byteArrayOutputStream.write(137);
                writeValue(byteArrayOutputStream, ((PlatformProductDetails) obj).toList());
            } else if (obj instanceof PlatformProductDetailsResponse) {
                byteArrayOutputStream.write(138);
                writeValue(byteArrayOutputStream, ((PlatformProductDetailsResponse) obj).toList());
            } else if (obj instanceof PlatformAlternativeBillingOnlyReportingDetailsResponse) {
                byteArrayOutputStream.write(139);
                writeValue(byteArrayOutputStream, ((PlatformAlternativeBillingOnlyReportingDetailsResponse) obj).toList());
            } else if (obj instanceof PlatformBillingConfigResponse) {
                byteArrayOutputStream.write(140);
                writeValue(byteArrayOutputStream, ((PlatformBillingConfigResponse) obj).toList());
            } else if (obj instanceof PlatformBillingFlowParams) {
                byteArrayOutputStream.write(141);
                writeValue(byteArrayOutputStream, ((PlatformBillingFlowParams) obj).toList());
            } else if (obj instanceof PlatformPricingPhase) {
                byteArrayOutputStream.write(142);
                writeValue(byteArrayOutputStream, ((PlatformPricingPhase) obj).toList());
            } else if (obj instanceof PlatformPurchase) {
                byteArrayOutputStream.write(143);
                writeValue(byteArrayOutputStream, ((PlatformPurchase) obj).toList());
            } else if (obj instanceof PlatformPurchaseHistoryRecord) {
                byteArrayOutputStream.write(144);
                writeValue(byteArrayOutputStream, ((PlatformPurchaseHistoryRecord) obj).toList());
            } else if (obj instanceof PlatformPurchaseHistoryResponse) {
                byteArrayOutputStream.write(145);
                writeValue(byteArrayOutputStream, ((PlatformPurchaseHistoryResponse) obj).toList());
            } else if (obj instanceof PlatformPurchasesResponse) {
                byteArrayOutputStream.write(146);
                writeValue(byteArrayOutputStream, ((PlatformPurchasesResponse) obj).toList());
            } else if (obj instanceof PlatformSubscriptionOfferDetails) {
                byteArrayOutputStream.write(147);
                writeValue(byteArrayOutputStream, ((PlatformSubscriptionOfferDetails) obj).toList());
            } else if (obj instanceof PlatformUserChoiceDetails) {
                byteArrayOutputStream.write(148);
                writeValue(byteArrayOutputStream, ((PlatformUserChoiceDetails) obj).toList());
            } else if (obj instanceof PlatformUserChoiceProduct) {
                byteArrayOutputStream.write(149);
                writeValue(byteArrayOutputStream, ((PlatformUserChoiceProduct) obj).toList());
            } else {
                super.writeValue(byteArrayOutputStream, obj);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class PlatformAccountIdentifiers {
        private String obfuscatedAccountId;
        private String obfuscatedProfileId;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String obfuscatedAccountId;
            private String obfuscatedProfileId;

            public PlatformAccountIdentifiers build() {
                PlatformAccountIdentifiers platformAccountIdentifiers = new PlatformAccountIdentifiers();
                platformAccountIdentifiers.setObfuscatedAccountId(this.obfuscatedAccountId);
                platformAccountIdentifiers.setObfuscatedProfileId(this.obfuscatedProfileId);
                return platformAccountIdentifiers;
            }

            @CanIgnoreReturnValue
            public Builder setObfuscatedAccountId(String str) {
                this.obfuscatedAccountId = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setObfuscatedProfileId(String str) {
                this.obfuscatedProfileId = str;
                return this;
            }
        }

        static PlatformAccountIdentifiers fromList(ArrayList<Object> arrayList) {
            PlatformAccountIdentifiers platformAccountIdentifiers = new PlatformAccountIdentifiers();
            platformAccountIdentifiers.setObfuscatedAccountId((String) arrayList.get(0));
            platformAccountIdentifiers.setObfuscatedProfileId((String) arrayList.get(1));
            return platformAccountIdentifiers;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || PlatformAccountIdentifiers.class != obj.getClass()) {
                return false;
            }
            PlatformAccountIdentifiers platformAccountIdentifiers = (PlatformAccountIdentifiers) obj;
            if (Objects.equals(this.obfuscatedAccountId, platformAccountIdentifiers.obfuscatedAccountId) && Objects.equals(this.obfuscatedProfileId, platformAccountIdentifiers.obfuscatedProfileId)) {
                return true;
            }
            return false;
        }

        public String getObfuscatedAccountId() {
            return this.obfuscatedAccountId;
        }

        public String getObfuscatedProfileId() {
            return this.obfuscatedProfileId;
        }

        public int hashCode() {
            return Objects.hash(this.obfuscatedAccountId, this.obfuscatedProfileId);
        }

        public void setObfuscatedAccountId(String str) {
            this.obfuscatedAccountId = str;
        }

        public void setObfuscatedProfileId(String str) {
            this.obfuscatedProfileId = str;
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.obfuscatedAccountId);
            arrayList.add(this.obfuscatedProfileId);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class PlatformAlternativeBillingOnlyReportingDetailsResponse {
        private PlatformBillingResult billingResult;
        private String externalTransactionToken;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private PlatformBillingResult billingResult;
            private String externalTransactionToken;

            public PlatformAlternativeBillingOnlyReportingDetailsResponse build() {
                PlatformAlternativeBillingOnlyReportingDetailsResponse platformAlternativeBillingOnlyReportingDetailsResponse = new PlatformAlternativeBillingOnlyReportingDetailsResponse();
                platformAlternativeBillingOnlyReportingDetailsResponse.setBillingResult(this.billingResult);
                platformAlternativeBillingOnlyReportingDetailsResponse.setExternalTransactionToken(this.externalTransactionToken);
                return platformAlternativeBillingOnlyReportingDetailsResponse;
            }

            @CanIgnoreReturnValue
            public Builder setBillingResult(PlatformBillingResult platformBillingResult) {
                this.billingResult = platformBillingResult;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setExternalTransactionToken(String str) {
                this.externalTransactionToken = str;
                return this;
            }
        }

        PlatformAlternativeBillingOnlyReportingDetailsResponse() {
        }

        static PlatformAlternativeBillingOnlyReportingDetailsResponse fromList(ArrayList<Object> arrayList) {
            PlatformAlternativeBillingOnlyReportingDetailsResponse platformAlternativeBillingOnlyReportingDetailsResponse = new PlatformAlternativeBillingOnlyReportingDetailsResponse();
            platformAlternativeBillingOnlyReportingDetailsResponse.setBillingResult((PlatformBillingResult) arrayList.get(0));
            platformAlternativeBillingOnlyReportingDetailsResponse.setExternalTransactionToken((String) arrayList.get(1));
            return platformAlternativeBillingOnlyReportingDetailsResponse;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || PlatformAlternativeBillingOnlyReportingDetailsResponse.class != obj.getClass()) {
                return false;
            }
            PlatformAlternativeBillingOnlyReportingDetailsResponse platformAlternativeBillingOnlyReportingDetailsResponse = (PlatformAlternativeBillingOnlyReportingDetailsResponse) obj;
            if (this.billingResult.equals(platformAlternativeBillingOnlyReportingDetailsResponse.billingResult) && this.externalTransactionToken.equals(platformAlternativeBillingOnlyReportingDetailsResponse.externalTransactionToken)) {
                return true;
            }
            return false;
        }

        public PlatformBillingResult getBillingResult() {
            return this.billingResult;
        }

        public String getExternalTransactionToken() {
            return this.externalTransactionToken;
        }

        public int hashCode() {
            return Objects.hash(this.billingResult, this.externalTransactionToken);
        }

        public void setBillingResult(PlatformBillingResult platformBillingResult) {
            if (platformBillingResult != null) {
                this.billingResult = platformBillingResult;
                return;
            }
            throw new IllegalStateException("Nonnull field \"billingResult\" is null.");
        }

        public void setExternalTransactionToken(String str) {
            if (str != null) {
                this.externalTransactionToken = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"externalTransactionToken\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.billingResult);
            arrayList.add(this.externalTransactionToken);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public enum PlatformBillingChoiceMode {
        PLAY_BILLING_ONLY(0),
        ALTERNATIVE_BILLING_ONLY(1),
        USER_CHOICE_BILLING(2);
        
        final int index;

        PlatformBillingChoiceMode(int i10) {
            this.index = i10;
        }
    }

    /* loaded from: classes2.dex */
    public static final class PlatformBillingConfigResponse {
        private PlatformBillingResult billingResult;
        private String countryCode;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private PlatformBillingResult billingResult;
            private String countryCode;

            public PlatformBillingConfigResponse build() {
                PlatformBillingConfigResponse platformBillingConfigResponse = new PlatformBillingConfigResponse();
                platformBillingConfigResponse.setBillingResult(this.billingResult);
                platformBillingConfigResponse.setCountryCode(this.countryCode);
                return platformBillingConfigResponse;
            }

            @CanIgnoreReturnValue
            public Builder setBillingResult(PlatformBillingResult platformBillingResult) {
                this.billingResult = platformBillingResult;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setCountryCode(String str) {
                this.countryCode = str;
                return this;
            }
        }

        PlatformBillingConfigResponse() {
        }

        static PlatformBillingConfigResponse fromList(ArrayList<Object> arrayList) {
            PlatformBillingConfigResponse platformBillingConfigResponse = new PlatformBillingConfigResponse();
            platformBillingConfigResponse.setBillingResult((PlatformBillingResult) arrayList.get(0));
            platformBillingConfigResponse.setCountryCode((String) arrayList.get(1));
            return platformBillingConfigResponse;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || PlatformBillingConfigResponse.class != obj.getClass()) {
                return false;
            }
            PlatformBillingConfigResponse platformBillingConfigResponse = (PlatformBillingConfigResponse) obj;
            if (this.billingResult.equals(platformBillingConfigResponse.billingResult) && this.countryCode.equals(platformBillingConfigResponse.countryCode)) {
                return true;
            }
            return false;
        }

        public PlatformBillingResult getBillingResult() {
            return this.billingResult;
        }

        public String getCountryCode() {
            return this.countryCode;
        }

        public int hashCode() {
            return Objects.hash(this.billingResult, this.countryCode);
        }

        public void setBillingResult(PlatformBillingResult platformBillingResult) {
            if (platformBillingResult != null) {
                this.billingResult = platformBillingResult;
                return;
            }
            throw new IllegalStateException("Nonnull field \"billingResult\" is null.");
        }

        public void setCountryCode(String str) {
            if (str != null) {
                this.countryCode = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"countryCode\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.billingResult);
            arrayList.add(this.countryCode);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class PlatformBillingFlowParams {
        private String accountId;
        private String obfuscatedProfileId;
        private String offerToken;
        private String oldProduct;
        private String product;
        private Long prorationMode;
        private String purchaseToken;
        private Long replacementMode;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String accountId;
            private String obfuscatedProfileId;
            private String offerToken;
            private String oldProduct;
            private String product;
            private Long prorationMode;
            private String purchaseToken;
            private Long replacementMode;

            public PlatformBillingFlowParams build() {
                PlatformBillingFlowParams platformBillingFlowParams = new PlatformBillingFlowParams();
                platformBillingFlowParams.setProduct(this.product);
                platformBillingFlowParams.setProrationMode(this.prorationMode);
                platformBillingFlowParams.setReplacementMode(this.replacementMode);
                platformBillingFlowParams.setOfferToken(this.offerToken);
                platformBillingFlowParams.setAccountId(this.accountId);
                platformBillingFlowParams.setObfuscatedProfileId(this.obfuscatedProfileId);
                platformBillingFlowParams.setOldProduct(this.oldProduct);
                platformBillingFlowParams.setPurchaseToken(this.purchaseToken);
                return platformBillingFlowParams;
            }

            @CanIgnoreReturnValue
            public Builder setAccountId(String str) {
                this.accountId = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setObfuscatedProfileId(String str) {
                this.obfuscatedProfileId = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setOfferToken(String str) {
                this.offerToken = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setOldProduct(String str) {
                this.oldProduct = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setProduct(String str) {
                this.product = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setProrationMode(Long l10) {
                this.prorationMode = l10;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setPurchaseToken(String str) {
                this.purchaseToken = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setReplacementMode(Long l10) {
                this.replacementMode = l10;
                return this;
            }
        }

        PlatformBillingFlowParams() {
        }

        static PlatformBillingFlowParams fromList(ArrayList<Object> arrayList) {
            PlatformBillingFlowParams platformBillingFlowParams = new PlatformBillingFlowParams();
            platformBillingFlowParams.setProduct((String) arrayList.get(0));
            platformBillingFlowParams.setProrationMode((Long) arrayList.get(1));
            platformBillingFlowParams.setReplacementMode((Long) arrayList.get(2));
            platformBillingFlowParams.setOfferToken((String) arrayList.get(3));
            platformBillingFlowParams.setAccountId((String) arrayList.get(4));
            platformBillingFlowParams.setObfuscatedProfileId((String) arrayList.get(5));
            platformBillingFlowParams.setOldProduct((String) arrayList.get(6));
            platformBillingFlowParams.setPurchaseToken((String) arrayList.get(7));
            return platformBillingFlowParams;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || PlatformBillingFlowParams.class != obj.getClass()) {
                return false;
            }
            PlatformBillingFlowParams platformBillingFlowParams = (PlatformBillingFlowParams) obj;
            if (this.product.equals(platformBillingFlowParams.product) && this.prorationMode.equals(platformBillingFlowParams.prorationMode) && this.replacementMode.equals(platformBillingFlowParams.replacementMode) && Objects.equals(this.offerToken, platformBillingFlowParams.offerToken) && Objects.equals(this.accountId, platformBillingFlowParams.accountId) && Objects.equals(this.obfuscatedProfileId, platformBillingFlowParams.obfuscatedProfileId) && Objects.equals(this.oldProduct, platformBillingFlowParams.oldProduct) && Objects.equals(this.purchaseToken, platformBillingFlowParams.purchaseToken)) {
                return true;
            }
            return false;
        }

        public String getAccountId() {
            return this.accountId;
        }

        public String getObfuscatedProfileId() {
            return this.obfuscatedProfileId;
        }

        public String getOfferToken() {
            return this.offerToken;
        }

        public String getOldProduct() {
            return this.oldProduct;
        }

        public String getProduct() {
            return this.product;
        }

        public Long getProrationMode() {
            return this.prorationMode;
        }

        public String getPurchaseToken() {
            return this.purchaseToken;
        }

        public Long getReplacementMode() {
            return this.replacementMode;
        }

        public int hashCode() {
            return Objects.hash(this.product, this.prorationMode, this.replacementMode, this.offerToken, this.accountId, this.obfuscatedProfileId, this.oldProduct, this.purchaseToken);
        }

        public void setAccountId(String str) {
            this.accountId = str;
        }

        public void setObfuscatedProfileId(String str) {
            this.obfuscatedProfileId = str;
        }

        public void setOfferToken(String str) {
            this.offerToken = str;
        }

        public void setOldProduct(String str) {
            this.oldProduct = str;
        }

        public void setProduct(String str) {
            if (str != null) {
                this.product = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"product\" is null.");
        }

        public void setProrationMode(Long l10) {
            if (l10 != null) {
                this.prorationMode = l10;
                return;
            }
            throw new IllegalStateException("Nonnull field \"prorationMode\" is null.");
        }

        public void setPurchaseToken(String str) {
            this.purchaseToken = str;
        }

        public void setReplacementMode(Long l10) {
            if (l10 != null) {
                this.replacementMode = l10;
                return;
            }
            throw new IllegalStateException("Nonnull field \"replacementMode\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(8);
            arrayList.add(this.product);
            arrayList.add(this.prorationMode);
            arrayList.add(this.replacementMode);
            arrayList.add(this.offerToken);
            arrayList.add(this.accountId);
            arrayList.add(this.obfuscatedProfileId);
            arrayList.add(this.oldProduct);
            arrayList.add(this.purchaseToken);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class PlatformBillingResult {
        private String debugMessage;
        private Long responseCode;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String debugMessage;
            private Long responseCode;

            public PlatformBillingResult build() {
                PlatformBillingResult platformBillingResult = new PlatformBillingResult();
                platformBillingResult.setResponseCode(this.responseCode);
                platformBillingResult.setDebugMessage(this.debugMessage);
                return platformBillingResult;
            }

            @CanIgnoreReturnValue
            public Builder setDebugMessage(String str) {
                this.debugMessage = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setResponseCode(Long l10) {
                this.responseCode = l10;
                return this;
            }
        }

        PlatformBillingResult() {
        }

        static PlatformBillingResult fromList(ArrayList<Object> arrayList) {
            PlatformBillingResult platformBillingResult = new PlatformBillingResult();
            platformBillingResult.setResponseCode((Long) arrayList.get(0));
            platformBillingResult.setDebugMessage((String) arrayList.get(1));
            return platformBillingResult;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || PlatformBillingResult.class != obj.getClass()) {
                return false;
            }
            PlatformBillingResult platformBillingResult = (PlatformBillingResult) obj;
            if (this.responseCode.equals(platformBillingResult.responseCode) && this.debugMessage.equals(platformBillingResult.debugMessage)) {
                return true;
            }
            return false;
        }

        public String getDebugMessage() {
            return this.debugMessage;
        }

        public Long getResponseCode() {
            return this.responseCode;
        }

        public int hashCode() {
            return Objects.hash(this.responseCode, this.debugMessage);
        }

        public void setDebugMessage(String str) {
            if (str != null) {
                this.debugMessage = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"debugMessage\" is null.");
        }

        public void setResponseCode(Long l10) {
            if (l10 != null) {
                this.responseCode = l10;
                return;
            }
            throw new IllegalStateException("Nonnull field \"responseCode\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.responseCode);
            arrayList.add(this.debugMessage);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class PlatformOneTimePurchaseOfferDetails {
        private String formattedPrice;
        private Long priceAmountMicros;
        private String priceCurrencyCode;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String formattedPrice;
            private Long priceAmountMicros;
            private String priceCurrencyCode;

            public PlatformOneTimePurchaseOfferDetails build() {
                PlatformOneTimePurchaseOfferDetails platformOneTimePurchaseOfferDetails = new PlatformOneTimePurchaseOfferDetails();
                platformOneTimePurchaseOfferDetails.setPriceAmountMicros(this.priceAmountMicros);
                platformOneTimePurchaseOfferDetails.setFormattedPrice(this.formattedPrice);
                platformOneTimePurchaseOfferDetails.setPriceCurrencyCode(this.priceCurrencyCode);
                return platformOneTimePurchaseOfferDetails;
            }

            @CanIgnoreReturnValue
            public Builder setFormattedPrice(String str) {
                this.formattedPrice = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setPriceAmountMicros(Long l10) {
                this.priceAmountMicros = l10;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setPriceCurrencyCode(String str) {
                this.priceCurrencyCode = str;
                return this;
            }
        }

        PlatformOneTimePurchaseOfferDetails() {
        }

        static PlatformOneTimePurchaseOfferDetails fromList(ArrayList<Object> arrayList) {
            PlatformOneTimePurchaseOfferDetails platformOneTimePurchaseOfferDetails = new PlatformOneTimePurchaseOfferDetails();
            platformOneTimePurchaseOfferDetails.setPriceAmountMicros((Long) arrayList.get(0));
            platformOneTimePurchaseOfferDetails.setFormattedPrice((String) arrayList.get(1));
            platformOneTimePurchaseOfferDetails.setPriceCurrencyCode((String) arrayList.get(2));
            return platformOneTimePurchaseOfferDetails;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || PlatformOneTimePurchaseOfferDetails.class != obj.getClass()) {
                return false;
            }
            PlatformOneTimePurchaseOfferDetails platformOneTimePurchaseOfferDetails = (PlatformOneTimePurchaseOfferDetails) obj;
            if (this.priceAmountMicros.equals(platformOneTimePurchaseOfferDetails.priceAmountMicros) && this.formattedPrice.equals(platformOneTimePurchaseOfferDetails.formattedPrice) && this.priceCurrencyCode.equals(platformOneTimePurchaseOfferDetails.priceCurrencyCode)) {
                return true;
            }
            return false;
        }

        public String getFormattedPrice() {
            return this.formattedPrice;
        }

        public Long getPriceAmountMicros() {
            return this.priceAmountMicros;
        }

        public String getPriceCurrencyCode() {
            return this.priceCurrencyCode;
        }

        public int hashCode() {
            return Objects.hash(this.priceAmountMicros, this.formattedPrice, this.priceCurrencyCode);
        }

        public void setFormattedPrice(String str) {
            if (str != null) {
                this.formattedPrice = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"formattedPrice\" is null.");
        }

        public void setPriceAmountMicros(Long l10) {
            if (l10 != null) {
                this.priceAmountMicros = l10;
                return;
            }
            throw new IllegalStateException("Nonnull field \"priceAmountMicros\" is null.");
        }

        public void setPriceCurrencyCode(String str) {
            if (str != null) {
                this.priceCurrencyCode = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"priceCurrencyCode\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(3);
            arrayList.add(this.priceAmountMicros);
            arrayList.add(this.formattedPrice);
            arrayList.add(this.priceCurrencyCode);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class PlatformPricingPhase {
        private Long billingCycleCount;
        private String billingPeriod;
        private String formattedPrice;
        private Long priceAmountMicros;
        private String priceCurrencyCode;
        private PlatformRecurrenceMode recurrenceMode;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private Long billingCycleCount;
            private String billingPeriod;
            private String formattedPrice;
            private Long priceAmountMicros;
            private String priceCurrencyCode;
            private PlatformRecurrenceMode recurrenceMode;

            public PlatformPricingPhase build() {
                PlatformPricingPhase platformPricingPhase = new PlatformPricingPhase();
                platformPricingPhase.setBillingCycleCount(this.billingCycleCount);
                platformPricingPhase.setRecurrenceMode(this.recurrenceMode);
                platformPricingPhase.setPriceAmountMicros(this.priceAmountMicros);
                platformPricingPhase.setBillingPeriod(this.billingPeriod);
                platformPricingPhase.setFormattedPrice(this.formattedPrice);
                platformPricingPhase.setPriceCurrencyCode(this.priceCurrencyCode);
                return platformPricingPhase;
            }

            @CanIgnoreReturnValue
            public Builder setBillingCycleCount(Long l10) {
                this.billingCycleCount = l10;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setBillingPeriod(String str) {
                this.billingPeriod = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setFormattedPrice(String str) {
                this.formattedPrice = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setPriceAmountMicros(Long l10) {
                this.priceAmountMicros = l10;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setPriceCurrencyCode(String str) {
                this.priceCurrencyCode = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setRecurrenceMode(PlatformRecurrenceMode platformRecurrenceMode) {
                this.recurrenceMode = platformRecurrenceMode;
                return this;
            }
        }

        PlatformPricingPhase() {
        }

        static PlatformPricingPhase fromList(ArrayList<Object> arrayList) {
            PlatformPricingPhase platformPricingPhase = new PlatformPricingPhase();
            platformPricingPhase.setBillingCycleCount((Long) arrayList.get(0));
            platformPricingPhase.setRecurrenceMode((PlatformRecurrenceMode) arrayList.get(1));
            platformPricingPhase.setPriceAmountMicros((Long) arrayList.get(2));
            platformPricingPhase.setBillingPeriod((String) arrayList.get(3));
            platformPricingPhase.setFormattedPrice((String) arrayList.get(4));
            platformPricingPhase.setPriceCurrencyCode((String) arrayList.get(5));
            return platformPricingPhase;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || PlatformPricingPhase.class != obj.getClass()) {
                return false;
            }
            PlatformPricingPhase platformPricingPhase = (PlatformPricingPhase) obj;
            if (this.billingCycleCount.equals(platformPricingPhase.billingCycleCount) && this.recurrenceMode.equals(platformPricingPhase.recurrenceMode) && this.priceAmountMicros.equals(platformPricingPhase.priceAmountMicros) && this.billingPeriod.equals(platformPricingPhase.billingPeriod) && this.formattedPrice.equals(platformPricingPhase.formattedPrice) && this.priceCurrencyCode.equals(platformPricingPhase.priceCurrencyCode)) {
                return true;
            }
            return false;
        }

        public Long getBillingCycleCount() {
            return this.billingCycleCount;
        }

        public String getBillingPeriod() {
            return this.billingPeriod;
        }

        public String getFormattedPrice() {
            return this.formattedPrice;
        }

        public Long getPriceAmountMicros() {
            return this.priceAmountMicros;
        }

        public String getPriceCurrencyCode() {
            return this.priceCurrencyCode;
        }

        public PlatformRecurrenceMode getRecurrenceMode() {
            return this.recurrenceMode;
        }

        public int hashCode() {
            return Objects.hash(this.billingCycleCount, this.recurrenceMode, this.priceAmountMicros, this.billingPeriod, this.formattedPrice, this.priceCurrencyCode);
        }

        public void setBillingCycleCount(Long l10) {
            if (l10 != null) {
                this.billingCycleCount = l10;
                return;
            }
            throw new IllegalStateException("Nonnull field \"billingCycleCount\" is null.");
        }

        public void setBillingPeriod(String str) {
            if (str != null) {
                this.billingPeriod = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"billingPeriod\" is null.");
        }

        public void setFormattedPrice(String str) {
            if (str != null) {
                this.formattedPrice = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"formattedPrice\" is null.");
        }

        public void setPriceAmountMicros(Long l10) {
            if (l10 != null) {
                this.priceAmountMicros = l10;
                return;
            }
            throw new IllegalStateException("Nonnull field \"priceAmountMicros\" is null.");
        }

        public void setPriceCurrencyCode(String str) {
            if (str != null) {
                this.priceCurrencyCode = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"priceCurrencyCode\" is null.");
        }

        public void setRecurrenceMode(PlatformRecurrenceMode platformRecurrenceMode) {
            if (platformRecurrenceMode != null) {
                this.recurrenceMode = platformRecurrenceMode;
                return;
            }
            throw new IllegalStateException("Nonnull field \"recurrenceMode\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(6);
            arrayList.add(this.billingCycleCount);
            arrayList.add(this.recurrenceMode);
            arrayList.add(this.priceAmountMicros);
            arrayList.add(this.billingPeriod);
            arrayList.add(this.formattedPrice);
            arrayList.add(this.priceCurrencyCode);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class PlatformProductDetails {
        private String description;
        private String name;
        private PlatformOneTimePurchaseOfferDetails oneTimePurchaseOfferDetails;
        private String productId;
        private PlatformProductType productType;
        private List<PlatformSubscriptionOfferDetails> subscriptionOfferDetails;
        private String title;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String description;
            private String name;
            private PlatformOneTimePurchaseOfferDetails oneTimePurchaseOfferDetails;
            private String productId;
            private PlatformProductType productType;
            private List<PlatformSubscriptionOfferDetails> subscriptionOfferDetails;
            private String title;

            public PlatformProductDetails build() {
                PlatformProductDetails platformProductDetails = new PlatformProductDetails();
                platformProductDetails.setDescription(this.description);
                platformProductDetails.setName(this.name);
                platformProductDetails.setProductId(this.productId);
                platformProductDetails.setProductType(this.productType);
                platformProductDetails.setTitle(this.title);
                platformProductDetails.setOneTimePurchaseOfferDetails(this.oneTimePurchaseOfferDetails);
                platformProductDetails.setSubscriptionOfferDetails(this.subscriptionOfferDetails);
                return platformProductDetails;
            }

            @CanIgnoreReturnValue
            public Builder setDescription(String str) {
                this.description = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setName(String str) {
                this.name = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setOneTimePurchaseOfferDetails(PlatformOneTimePurchaseOfferDetails platformOneTimePurchaseOfferDetails) {
                this.oneTimePurchaseOfferDetails = platformOneTimePurchaseOfferDetails;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setProductId(String str) {
                this.productId = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setProductType(PlatformProductType platformProductType) {
                this.productType = platformProductType;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setSubscriptionOfferDetails(List<PlatformSubscriptionOfferDetails> list) {
                this.subscriptionOfferDetails = list;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setTitle(String str) {
                this.title = str;
                return this;
            }
        }

        PlatformProductDetails() {
        }

        static PlatformProductDetails fromList(ArrayList<Object> arrayList) {
            PlatformProductDetails platformProductDetails = new PlatformProductDetails();
            platformProductDetails.setDescription((String) arrayList.get(0));
            platformProductDetails.setName((String) arrayList.get(1));
            platformProductDetails.setProductId((String) arrayList.get(2));
            platformProductDetails.setProductType((PlatformProductType) arrayList.get(3));
            platformProductDetails.setTitle((String) arrayList.get(4));
            platformProductDetails.setOneTimePurchaseOfferDetails((PlatformOneTimePurchaseOfferDetails) arrayList.get(5));
            platformProductDetails.setSubscriptionOfferDetails((List) arrayList.get(6));
            return platformProductDetails;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || PlatformProductDetails.class != obj.getClass()) {
                return false;
            }
            PlatformProductDetails platformProductDetails = (PlatformProductDetails) obj;
            if (this.description.equals(platformProductDetails.description) && this.name.equals(platformProductDetails.name) && this.productId.equals(platformProductDetails.productId) && this.productType.equals(platformProductDetails.productType) && this.title.equals(platformProductDetails.title) && Objects.equals(this.oneTimePurchaseOfferDetails, platformProductDetails.oneTimePurchaseOfferDetails) && Objects.equals(this.subscriptionOfferDetails, platformProductDetails.subscriptionOfferDetails)) {
                return true;
            }
            return false;
        }

        public String getDescription() {
            return this.description;
        }

        public String getName() {
            return this.name;
        }

        public PlatformOneTimePurchaseOfferDetails getOneTimePurchaseOfferDetails() {
            return this.oneTimePurchaseOfferDetails;
        }

        public String getProductId() {
            return this.productId;
        }

        public PlatformProductType getProductType() {
            return this.productType;
        }

        public List<PlatformSubscriptionOfferDetails> getSubscriptionOfferDetails() {
            return this.subscriptionOfferDetails;
        }

        public String getTitle() {
            return this.title;
        }

        public int hashCode() {
            return Objects.hash(this.description, this.name, this.productId, this.productType, this.title, this.oneTimePurchaseOfferDetails, this.subscriptionOfferDetails);
        }

        public void setDescription(String str) {
            if (str != null) {
                this.description = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"description\" is null.");
        }

        public void setName(String str) {
            if (str != null) {
                this.name = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"name\" is null.");
        }

        public void setOneTimePurchaseOfferDetails(PlatformOneTimePurchaseOfferDetails platformOneTimePurchaseOfferDetails) {
            this.oneTimePurchaseOfferDetails = platformOneTimePurchaseOfferDetails;
        }

        public void setProductId(String str) {
            if (str != null) {
                this.productId = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"productId\" is null.");
        }

        public void setProductType(PlatformProductType platformProductType) {
            if (platformProductType != null) {
                this.productType = platformProductType;
                return;
            }
            throw new IllegalStateException("Nonnull field \"productType\" is null.");
        }

        public void setSubscriptionOfferDetails(List<PlatformSubscriptionOfferDetails> list) {
            this.subscriptionOfferDetails = list;
        }

        public void setTitle(String str) {
            if (str != null) {
                this.title = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"title\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(7);
            arrayList.add(this.description);
            arrayList.add(this.name);
            arrayList.add(this.productId);
            arrayList.add(this.productType);
            arrayList.add(this.title);
            arrayList.add(this.oneTimePurchaseOfferDetails);
            arrayList.add(this.subscriptionOfferDetails);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class PlatformProductDetailsResponse {
        private PlatformBillingResult billingResult;
        private List<PlatformProductDetails> productDetails;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private PlatformBillingResult billingResult;
            private List<PlatformProductDetails> productDetails;

            public PlatformProductDetailsResponse build() {
                PlatformProductDetailsResponse platformProductDetailsResponse = new PlatformProductDetailsResponse();
                platformProductDetailsResponse.setBillingResult(this.billingResult);
                platformProductDetailsResponse.setProductDetails(this.productDetails);
                return platformProductDetailsResponse;
            }

            @CanIgnoreReturnValue
            public Builder setBillingResult(PlatformBillingResult platformBillingResult) {
                this.billingResult = platformBillingResult;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setProductDetails(List<PlatformProductDetails> list) {
                this.productDetails = list;
                return this;
            }
        }

        PlatformProductDetailsResponse() {
        }

        static PlatformProductDetailsResponse fromList(ArrayList<Object> arrayList) {
            PlatformProductDetailsResponse platformProductDetailsResponse = new PlatformProductDetailsResponse();
            platformProductDetailsResponse.setBillingResult((PlatformBillingResult) arrayList.get(0));
            platformProductDetailsResponse.setProductDetails((List) arrayList.get(1));
            return platformProductDetailsResponse;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || PlatformProductDetailsResponse.class != obj.getClass()) {
                return false;
            }
            PlatformProductDetailsResponse platformProductDetailsResponse = (PlatformProductDetailsResponse) obj;
            if (this.billingResult.equals(platformProductDetailsResponse.billingResult) && this.productDetails.equals(platformProductDetailsResponse.productDetails)) {
                return true;
            }
            return false;
        }

        public PlatformBillingResult getBillingResult() {
            return this.billingResult;
        }

        public List<PlatformProductDetails> getProductDetails() {
            return this.productDetails;
        }

        public int hashCode() {
            return Objects.hash(this.billingResult, this.productDetails);
        }

        public void setBillingResult(PlatformBillingResult platformBillingResult) {
            if (platformBillingResult != null) {
                this.billingResult = platformBillingResult;
                return;
            }
            throw new IllegalStateException("Nonnull field \"billingResult\" is null.");
        }

        public void setProductDetails(List<PlatformProductDetails> list) {
            if (list != null) {
                this.productDetails = list;
                return;
            }
            throw new IllegalStateException("Nonnull field \"productDetails\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.billingResult);
            arrayList.add(this.productDetails);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public enum PlatformProductType {
        INAPP(0),
        SUBS(1);
        
        final int index;

        PlatformProductType(int i10) {
            this.index = i10;
        }
    }

    /* loaded from: classes2.dex */
    public static final class PlatformPurchase {
        private PlatformAccountIdentifiers accountIdentifiers;
        private String developerPayload;
        private Boolean isAcknowledged;
        private Boolean isAutoRenewing;
        private String orderId;
        private String originalJson;
        private String packageName;
        private List<String> products;
        private PlatformPurchaseState purchaseState;
        private Long purchaseTime;
        private String purchaseToken;
        private Long quantity;
        private String signature;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private PlatformAccountIdentifiers accountIdentifiers;
            private String developerPayload;
            private Boolean isAcknowledged;
            private Boolean isAutoRenewing;
            private String orderId;
            private String originalJson;
            private String packageName;
            private List<String> products;
            private PlatformPurchaseState purchaseState;
            private Long purchaseTime;
            private String purchaseToken;
            private Long quantity;
            private String signature;

            public PlatformPurchase build() {
                PlatformPurchase platformPurchase = new PlatformPurchase();
                platformPurchase.setOrderId(this.orderId);
                platformPurchase.setPackageName(this.packageName);
                platformPurchase.setPurchaseTime(this.purchaseTime);
                platformPurchase.setPurchaseToken(this.purchaseToken);
                platformPurchase.setSignature(this.signature);
                platformPurchase.setProducts(this.products);
                platformPurchase.setIsAutoRenewing(this.isAutoRenewing);
                platformPurchase.setOriginalJson(this.originalJson);
                platformPurchase.setDeveloperPayload(this.developerPayload);
                platformPurchase.setIsAcknowledged(this.isAcknowledged);
                platformPurchase.setQuantity(this.quantity);
                platformPurchase.setPurchaseState(this.purchaseState);
                platformPurchase.setAccountIdentifiers(this.accountIdentifiers);
                return platformPurchase;
            }

            @CanIgnoreReturnValue
            public Builder setAccountIdentifiers(PlatformAccountIdentifiers platformAccountIdentifiers) {
                this.accountIdentifiers = platformAccountIdentifiers;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setDeveloperPayload(String str) {
                this.developerPayload = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setIsAcknowledged(Boolean bool) {
                this.isAcknowledged = bool;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setIsAutoRenewing(Boolean bool) {
                this.isAutoRenewing = bool;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setOrderId(String str) {
                this.orderId = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setOriginalJson(String str) {
                this.originalJson = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setPackageName(String str) {
                this.packageName = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setProducts(List<String> list) {
                this.products = list;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setPurchaseState(PlatformPurchaseState platformPurchaseState) {
                this.purchaseState = platformPurchaseState;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setPurchaseTime(Long l10) {
                this.purchaseTime = l10;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setPurchaseToken(String str) {
                this.purchaseToken = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setQuantity(Long l10) {
                this.quantity = l10;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setSignature(String str) {
                this.signature = str;
                return this;
            }
        }

        PlatformPurchase() {
        }

        static PlatformPurchase fromList(ArrayList<Object> arrayList) {
            PlatformPurchase platformPurchase = new PlatformPurchase();
            platformPurchase.setOrderId((String) arrayList.get(0));
            platformPurchase.setPackageName((String) arrayList.get(1));
            platformPurchase.setPurchaseTime((Long) arrayList.get(2));
            platformPurchase.setPurchaseToken((String) arrayList.get(3));
            platformPurchase.setSignature((String) arrayList.get(4));
            platformPurchase.setProducts((List) arrayList.get(5));
            platformPurchase.setIsAutoRenewing((Boolean) arrayList.get(6));
            platformPurchase.setOriginalJson((String) arrayList.get(7));
            platformPurchase.setDeveloperPayload((String) arrayList.get(8));
            platformPurchase.setIsAcknowledged((Boolean) arrayList.get(9));
            platformPurchase.setQuantity((Long) arrayList.get(10));
            platformPurchase.setPurchaseState((PlatformPurchaseState) arrayList.get(11));
            platformPurchase.setAccountIdentifiers((PlatformAccountIdentifiers) arrayList.get(12));
            return platformPurchase;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || PlatformPurchase.class != obj.getClass()) {
                return false;
            }
            PlatformPurchase platformPurchase = (PlatformPurchase) obj;
            if (Objects.equals(this.orderId, platformPurchase.orderId) && this.packageName.equals(platformPurchase.packageName) && this.purchaseTime.equals(platformPurchase.purchaseTime) && this.purchaseToken.equals(platformPurchase.purchaseToken) && this.signature.equals(platformPurchase.signature) && this.products.equals(platformPurchase.products) && this.isAutoRenewing.equals(platformPurchase.isAutoRenewing) && this.originalJson.equals(platformPurchase.originalJson) && this.developerPayload.equals(platformPurchase.developerPayload) && this.isAcknowledged.equals(platformPurchase.isAcknowledged) && this.quantity.equals(platformPurchase.quantity) && this.purchaseState.equals(platformPurchase.purchaseState) && Objects.equals(this.accountIdentifiers, platformPurchase.accountIdentifiers)) {
                return true;
            }
            return false;
        }

        public PlatformAccountIdentifiers getAccountIdentifiers() {
            return this.accountIdentifiers;
        }

        public String getDeveloperPayload() {
            return this.developerPayload;
        }

        public Boolean getIsAcknowledged() {
            return this.isAcknowledged;
        }

        public Boolean getIsAutoRenewing() {
            return this.isAutoRenewing;
        }

        public String getOrderId() {
            return this.orderId;
        }

        public String getOriginalJson() {
            return this.originalJson;
        }

        public String getPackageName() {
            return this.packageName;
        }

        public List<String> getProducts() {
            return this.products;
        }

        public PlatformPurchaseState getPurchaseState() {
            return this.purchaseState;
        }

        public Long getPurchaseTime() {
            return this.purchaseTime;
        }

        public String getPurchaseToken() {
            return this.purchaseToken;
        }

        public Long getQuantity() {
            return this.quantity;
        }

        public String getSignature() {
            return this.signature;
        }

        public int hashCode() {
            return Objects.hash(this.orderId, this.packageName, this.purchaseTime, this.purchaseToken, this.signature, this.products, this.isAutoRenewing, this.originalJson, this.developerPayload, this.isAcknowledged, this.quantity, this.purchaseState, this.accountIdentifiers);
        }

        public void setAccountIdentifiers(PlatformAccountIdentifiers platformAccountIdentifiers) {
            this.accountIdentifiers = platformAccountIdentifiers;
        }

        public void setDeveloperPayload(String str) {
            if (str != null) {
                this.developerPayload = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"developerPayload\" is null.");
        }

        public void setIsAcknowledged(Boolean bool) {
            if (bool != null) {
                this.isAcknowledged = bool;
                return;
            }
            throw new IllegalStateException("Nonnull field \"isAcknowledged\" is null.");
        }

        public void setIsAutoRenewing(Boolean bool) {
            if (bool != null) {
                this.isAutoRenewing = bool;
                return;
            }
            throw new IllegalStateException("Nonnull field \"isAutoRenewing\" is null.");
        }

        public void setOrderId(String str) {
            this.orderId = str;
        }

        public void setOriginalJson(String str) {
            if (str != null) {
                this.originalJson = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"originalJson\" is null.");
        }

        public void setPackageName(String str) {
            if (str != null) {
                this.packageName = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"packageName\" is null.");
        }

        public void setProducts(List<String> list) {
            if (list != null) {
                this.products = list;
                return;
            }
            throw new IllegalStateException("Nonnull field \"products\" is null.");
        }

        public void setPurchaseState(PlatformPurchaseState platformPurchaseState) {
            if (platformPurchaseState != null) {
                this.purchaseState = platformPurchaseState;
                return;
            }
            throw new IllegalStateException("Nonnull field \"purchaseState\" is null.");
        }

        public void setPurchaseTime(Long l10) {
            if (l10 != null) {
                this.purchaseTime = l10;
                return;
            }
            throw new IllegalStateException("Nonnull field \"purchaseTime\" is null.");
        }

        public void setPurchaseToken(String str) {
            if (str != null) {
                this.purchaseToken = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"purchaseToken\" is null.");
        }

        public void setQuantity(Long l10) {
            if (l10 != null) {
                this.quantity = l10;
                return;
            }
            throw new IllegalStateException("Nonnull field \"quantity\" is null.");
        }

        public void setSignature(String str) {
            if (str != null) {
                this.signature = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"signature\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(13);
            arrayList.add(this.orderId);
            arrayList.add(this.packageName);
            arrayList.add(this.purchaseTime);
            arrayList.add(this.purchaseToken);
            arrayList.add(this.signature);
            arrayList.add(this.products);
            arrayList.add(this.isAutoRenewing);
            arrayList.add(this.originalJson);
            arrayList.add(this.developerPayload);
            arrayList.add(this.isAcknowledged);
            arrayList.add(this.quantity);
            arrayList.add(this.purchaseState);
            arrayList.add(this.accountIdentifiers);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class PlatformPurchaseHistoryRecord {
        private String developerPayload;
        private String originalJson;
        private List<String> products;
        private Long purchaseTime;
        private String purchaseToken;
        private Long quantity;
        private String signature;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String developerPayload;
            private String originalJson;
            private List<String> products;
            private Long purchaseTime;
            private String purchaseToken;
            private Long quantity;
            private String signature;

            public PlatformPurchaseHistoryRecord build() {
                PlatformPurchaseHistoryRecord platformPurchaseHistoryRecord = new PlatformPurchaseHistoryRecord();
                platformPurchaseHistoryRecord.setQuantity(this.quantity);
                platformPurchaseHistoryRecord.setPurchaseTime(this.purchaseTime);
                platformPurchaseHistoryRecord.setDeveloperPayload(this.developerPayload);
                platformPurchaseHistoryRecord.setOriginalJson(this.originalJson);
                platformPurchaseHistoryRecord.setPurchaseToken(this.purchaseToken);
                platformPurchaseHistoryRecord.setSignature(this.signature);
                platformPurchaseHistoryRecord.setProducts(this.products);
                return platformPurchaseHistoryRecord;
            }

            @CanIgnoreReturnValue
            public Builder setDeveloperPayload(String str) {
                this.developerPayload = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setOriginalJson(String str) {
                this.originalJson = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setProducts(List<String> list) {
                this.products = list;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setPurchaseTime(Long l10) {
                this.purchaseTime = l10;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setPurchaseToken(String str) {
                this.purchaseToken = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setQuantity(Long l10) {
                this.quantity = l10;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setSignature(String str) {
                this.signature = str;
                return this;
            }
        }

        PlatformPurchaseHistoryRecord() {
        }

        static PlatformPurchaseHistoryRecord fromList(ArrayList<Object> arrayList) {
            PlatformPurchaseHistoryRecord platformPurchaseHistoryRecord = new PlatformPurchaseHistoryRecord();
            platformPurchaseHistoryRecord.setQuantity((Long) arrayList.get(0));
            platformPurchaseHistoryRecord.setPurchaseTime((Long) arrayList.get(1));
            platformPurchaseHistoryRecord.setDeveloperPayload((String) arrayList.get(2));
            platformPurchaseHistoryRecord.setOriginalJson((String) arrayList.get(3));
            platformPurchaseHistoryRecord.setPurchaseToken((String) arrayList.get(4));
            platformPurchaseHistoryRecord.setSignature((String) arrayList.get(5));
            platformPurchaseHistoryRecord.setProducts((List) arrayList.get(6));
            return platformPurchaseHistoryRecord;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || PlatformPurchaseHistoryRecord.class != obj.getClass()) {
                return false;
            }
            PlatformPurchaseHistoryRecord platformPurchaseHistoryRecord = (PlatformPurchaseHistoryRecord) obj;
            if (this.quantity.equals(platformPurchaseHistoryRecord.quantity) && this.purchaseTime.equals(platformPurchaseHistoryRecord.purchaseTime) && Objects.equals(this.developerPayload, platformPurchaseHistoryRecord.developerPayload) && this.originalJson.equals(platformPurchaseHistoryRecord.originalJson) && this.purchaseToken.equals(platformPurchaseHistoryRecord.purchaseToken) && this.signature.equals(platformPurchaseHistoryRecord.signature) && this.products.equals(platformPurchaseHistoryRecord.products)) {
                return true;
            }
            return false;
        }

        public String getDeveloperPayload() {
            return this.developerPayload;
        }

        public String getOriginalJson() {
            return this.originalJson;
        }

        public List<String> getProducts() {
            return this.products;
        }

        public Long getPurchaseTime() {
            return this.purchaseTime;
        }

        public String getPurchaseToken() {
            return this.purchaseToken;
        }

        public Long getQuantity() {
            return this.quantity;
        }

        public String getSignature() {
            return this.signature;
        }

        public int hashCode() {
            return Objects.hash(this.quantity, this.purchaseTime, this.developerPayload, this.originalJson, this.purchaseToken, this.signature, this.products);
        }

        public void setDeveloperPayload(String str) {
            this.developerPayload = str;
        }

        public void setOriginalJson(String str) {
            if (str != null) {
                this.originalJson = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"originalJson\" is null.");
        }

        public void setProducts(List<String> list) {
            if (list != null) {
                this.products = list;
                return;
            }
            throw new IllegalStateException("Nonnull field \"products\" is null.");
        }

        public void setPurchaseTime(Long l10) {
            if (l10 != null) {
                this.purchaseTime = l10;
                return;
            }
            throw new IllegalStateException("Nonnull field \"purchaseTime\" is null.");
        }

        public void setPurchaseToken(String str) {
            if (str != null) {
                this.purchaseToken = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"purchaseToken\" is null.");
        }

        public void setQuantity(Long l10) {
            if (l10 != null) {
                this.quantity = l10;
                return;
            }
            throw new IllegalStateException("Nonnull field \"quantity\" is null.");
        }

        public void setSignature(String str) {
            if (str != null) {
                this.signature = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"signature\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(7);
            arrayList.add(this.quantity);
            arrayList.add(this.purchaseTime);
            arrayList.add(this.developerPayload);
            arrayList.add(this.originalJson);
            arrayList.add(this.purchaseToken);
            arrayList.add(this.signature);
            arrayList.add(this.products);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class PlatformPurchaseHistoryResponse {
        private PlatformBillingResult billingResult;
        private List<PlatformPurchaseHistoryRecord> purchases;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private PlatformBillingResult billingResult;
            private List<PlatformPurchaseHistoryRecord> purchases;

            public PlatformPurchaseHistoryResponse build() {
                PlatformPurchaseHistoryResponse platformPurchaseHistoryResponse = new PlatformPurchaseHistoryResponse();
                platformPurchaseHistoryResponse.setBillingResult(this.billingResult);
                platformPurchaseHistoryResponse.setPurchases(this.purchases);
                return platformPurchaseHistoryResponse;
            }

            @CanIgnoreReturnValue
            public Builder setBillingResult(PlatformBillingResult platformBillingResult) {
                this.billingResult = platformBillingResult;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setPurchases(List<PlatformPurchaseHistoryRecord> list) {
                this.purchases = list;
                return this;
            }
        }

        PlatformPurchaseHistoryResponse() {
        }

        static PlatformPurchaseHistoryResponse fromList(ArrayList<Object> arrayList) {
            PlatformPurchaseHistoryResponse platformPurchaseHistoryResponse = new PlatformPurchaseHistoryResponse();
            platformPurchaseHistoryResponse.setBillingResult((PlatformBillingResult) arrayList.get(0));
            platformPurchaseHistoryResponse.setPurchases((List) arrayList.get(1));
            return platformPurchaseHistoryResponse;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || PlatformPurchaseHistoryResponse.class != obj.getClass()) {
                return false;
            }
            PlatformPurchaseHistoryResponse platformPurchaseHistoryResponse = (PlatformPurchaseHistoryResponse) obj;
            if (this.billingResult.equals(platformPurchaseHistoryResponse.billingResult) && this.purchases.equals(platformPurchaseHistoryResponse.purchases)) {
                return true;
            }
            return false;
        }

        public PlatformBillingResult getBillingResult() {
            return this.billingResult;
        }

        public List<PlatformPurchaseHistoryRecord> getPurchases() {
            return this.purchases;
        }

        public int hashCode() {
            return Objects.hash(this.billingResult, this.purchases);
        }

        public void setBillingResult(PlatformBillingResult platformBillingResult) {
            if (platformBillingResult != null) {
                this.billingResult = platformBillingResult;
                return;
            }
            throw new IllegalStateException("Nonnull field \"billingResult\" is null.");
        }

        public void setPurchases(List<PlatformPurchaseHistoryRecord> list) {
            if (list != null) {
                this.purchases = list;
                return;
            }
            throw new IllegalStateException("Nonnull field \"purchases\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.billingResult);
            arrayList.add(this.purchases);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public enum PlatformPurchaseState {
        UNSPECIFIED(0),
        PURCHASED(1),
        PENDING(2);
        
        final int index;

        PlatformPurchaseState(int i10) {
            this.index = i10;
        }
    }

    /* loaded from: classes2.dex */
    public static final class PlatformPurchasesResponse {
        private PlatformBillingResult billingResult;
        private List<PlatformPurchase> purchases;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private PlatformBillingResult billingResult;
            private List<PlatformPurchase> purchases;

            public PlatformPurchasesResponse build() {
                PlatformPurchasesResponse platformPurchasesResponse = new PlatformPurchasesResponse();
                platformPurchasesResponse.setBillingResult(this.billingResult);
                platformPurchasesResponse.setPurchases(this.purchases);
                return platformPurchasesResponse;
            }

            @CanIgnoreReturnValue
            public Builder setBillingResult(PlatformBillingResult platformBillingResult) {
                this.billingResult = platformBillingResult;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setPurchases(List<PlatformPurchase> list) {
                this.purchases = list;
                return this;
            }
        }

        PlatformPurchasesResponse() {
        }

        static PlatformPurchasesResponse fromList(ArrayList<Object> arrayList) {
            PlatformPurchasesResponse platformPurchasesResponse = new PlatformPurchasesResponse();
            platformPurchasesResponse.setBillingResult((PlatformBillingResult) arrayList.get(0));
            platformPurchasesResponse.setPurchases((List) arrayList.get(1));
            return platformPurchasesResponse;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || PlatformPurchasesResponse.class != obj.getClass()) {
                return false;
            }
            PlatformPurchasesResponse platformPurchasesResponse = (PlatformPurchasesResponse) obj;
            if (this.billingResult.equals(platformPurchasesResponse.billingResult) && this.purchases.equals(platformPurchasesResponse.purchases)) {
                return true;
            }
            return false;
        }

        public PlatformBillingResult getBillingResult() {
            return this.billingResult;
        }

        public List<PlatformPurchase> getPurchases() {
            return this.purchases;
        }

        public int hashCode() {
            return Objects.hash(this.billingResult, this.purchases);
        }

        public void setBillingResult(PlatformBillingResult platformBillingResult) {
            if (platformBillingResult != null) {
                this.billingResult = platformBillingResult;
                return;
            }
            throw new IllegalStateException("Nonnull field \"billingResult\" is null.");
        }

        public void setPurchases(List<PlatformPurchase> list) {
            if (list != null) {
                this.purchases = list;
                return;
            }
            throw new IllegalStateException("Nonnull field \"purchases\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.billingResult);
            arrayList.add(this.purchases);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class PlatformQueryProduct {
        private String productId;
        private PlatformProductType productType;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String productId;
            private PlatformProductType productType;

            public PlatformQueryProduct build() {
                PlatformQueryProduct platformQueryProduct = new PlatformQueryProduct();
                platformQueryProduct.setProductId(this.productId);
                platformQueryProduct.setProductType(this.productType);
                return platformQueryProduct;
            }

            @CanIgnoreReturnValue
            public Builder setProductId(String str) {
                this.productId = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setProductType(PlatformProductType platformProductType) {
                this.productType = platformProductType;
                return this;
            }
        }

        PlatformQueryProduct() {
        }

        static PlatformQueryProduct fromList(ArrayList<Object> arrayList) {
            PlatformQueryProduct platformQueryProduct = new PlatformQueryProduct();
            platformQueryProduct.setProductId((String) arrayList.get(0));
            platformQueryProduct.setProductType((PlatformProductType) arrayList.get(1));
            return platformQueryProduct;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || PlatformQueryProduct.class != obj.getClass()) {
                return false;
            }
            PlatformQueryProduct platformQueryProduct = (PlatformQueryProduct) obj;
            if (this.productId.equals(platformQueryProduct.productId) && this.productType.equals(platformQueryProduct.productType)) {
                return true;
            }
            return false;
        }

        public String getProductId() {
            return this.productId;
        }

        public PlatformProductType getProductType() {
            return this.productType;
        }

        public int hashCode() {
            return Objects.hash(this.productId, this.productType);
        }

        public void setProductId(String str) {
            if (str != null) {
                this.productId = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"productId\" is null.");
        }

        public void setProductType(PlatformProductType platformProductType) {
            if (platformProductType != null) {
                this.productType = platformProductType;
                return;
            }
            throw new IllegalStateException("Nonnull field \"productType\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.productId);
            arrayList.add(this.productType);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public enum PlatformRecurrenceMode {
        FINITE_RECURRING(0),
        INFINITE_RECURRING(1),
        NON_RECURRING(2);
        
        final int index;

        PlatformRecurrenceMode(int i10) {
            this.index = i10;
        }
    }

    /* loaded from: classes2.dex */
    public static final class PlatformSubscriptionOfferDetails {
        private String basePlanId;
        private String offerId;
        private List<String> offerTags;
        private String offerToken;
        private List<PlatformPricingPhase> pricingPhases;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String basePlanId;
            private String offerId;
            private List<String> offerTags;
            private String offerToken;
            private List<PlatformPricingPhase> pricingPhases;

            public PlatformSubscriptionOfferDetails build() {
                PlatformSubscriptionOfferDetails platformSubscriptionOfferDetails = new PlatformSubscriptionOfferDetails();
                platformSubscriptionOfferDetails.setBasePlanId(this.basePlanId);
                platformSubscriptionOfferDetails.setOfferId(this.offerId);
                platformSubscriptionOfferDetails.setOfferToken(this.offerToken);
                platformSubscriptionOfferDetails.setOfferTags(this.offerTags);
                platformSubscriptionOfferDetails.setPricingPhases(this.pricingPhases);
                return platformSubscriptionOfferDetails;
            }

            @CanIgnoreReturnValue
            public Builder setBasePlanId(String str) {
                this.basePlanId = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setOfferId(String str) {
                this.offerId = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setOfferTags(List<String> list) {
                this.offerTags = list;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setOfferToken(String str) {
                this.offerToken = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setPricingPhases(List<PlatformPricingPhase> list) {
                this.pricingPhases = list;
                return this;
            }
        }

        PlatformSubscriptionOfferDetails() {
        }

        static PlatformSubscriptionOfferDetails fromList(ArrayList<Object> arrayList) {
            PlatformSubscriptionOfferDetails platformSubscriptionOfferDetails = new PlatformSubscriptionOfferDetails();
            platformSubscriptionOfferDetails.setBasePlanId((String) arrayList.get(0));
            platformSubscriptionOfferDetails.setOfferId((String) arrayList.get(1));
            platformSubscriptionOfferDetails.setOfferToken((String) arrayList.get(2));
            platformSubscriptionOfferDetails.setOfferTags((List) arrayList.get(3));
            platformSubscriptionOfferDetails.setPricingPhases((List) arrayList.get(4));
            return platformSubscriptionOfferDetails;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || PlatformSubscriptionOfferDetails.class != obj.getClass()) {
                return false;
            }
            PlatformSubscriptionOfferDetails platformSubscriptionOfferDetails = (PlatformSubscriptionOfferDetails) obj;
            if (this.basePlanId.equals(platformSubscriptionOfferDetails.basePlanId) && Objects.equals(this.offerId, platformSubscriptionOfferDetails.offerId) && this.offerToken.equals(platformSubscriptionOfferDetails.offerToken) && this.offerTags.equals(platformSubscriptionOfferDetails.offerTags) && this.pricingPhases.equals(platformSubscriptionOfferDetails.pricingPhases)) {
                return true;
            }
            return false;
        }

        public String getBasePlanId() {
            return this.basePlanId;
        }

        public String getOfferId() {
            return this.offerId;
        }

        public List<String> getOfferTags() {
            return this.offerTags;
        }

        public String getOfferToken() {
            return this.offerToken;
        }

        public List<PlatformPricingPhase> getPricingPhases() {
            return this.pricingPhases;
        }

        public int hashCode() {
            return Objects.hash(this.basePlanId, this.offerId, this.offerToken, this.offerTags, this.pricingPhases);
        }

        public void setBasePlanId(String str) {
            if (str != null) {
                this.basePlanId = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"basePlanId\" is null.");
        }

        public void setOfferId(String str) {
            this.offerId = str;
        }

        public void setOfferTags(List<String> list) {
            if (list != null) {
                this.offerTags = list;
                return;
            }
            throw new IllegalStateException("Nonnull field \"offerTags\" is null.");
        }

        public void setOfferToken(String str) {
            if (str != null) {
                this.offerToken = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"offerToken\" is null.");
        }

        public void setPricingPhases(List<PlatformPricingPhase> list) {
            if (list != null) {
                this.pricingPhases = list;
                return;
            }
            throw new IllegalStateException("Nonnull field \"pricingPhases\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(5);
            arrayList.add(this.basePlanId);
            arrayList.add(this.offerId);
            arrayList.add(this.offerToken);
            arrayList.add(this.offerTags);
            arrayList.add(this.pricingPhases);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class PlatformUserChoiceDetails {
        private String externalTransactionToken;
        private String originalExternalTransactionId;
        private List<PlatformUserChoiceProduct> products;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String externalTransactionToken;
            private String originalExternalTransactionId;
            private List<PlatformUserChoiceProduct> products;

            public PlatformUserChoiceDetails build() {
                PlatformUserChoiceDetails platformUserChoiceDetails = new PlatformUserChoiceDetails();
                platformUserChoiceDetails.setOriginalExternalTransactionId(this.originalExternalTransactionId);
                platformUserChoiceDetails.setExternalTransactionToken(this.externalTransactionToken);
                platformUserChoiceDetails.setProducts(this.products);
                return platformUserChoiceDetails;
            }

            @CanIgnoreReturnValue
            public Builder setExternalTransactionToken(String str) {
                this.externalTransactionToken = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setOriginalExternalTransactionId(String str) {
                this.originalExternalTransactionId = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setProducts(List<PlatformUserChoiceProduct> list) {
                this.products = list;
                return this;
            }
        }

        PlatformUserChoiceDetails() {
        }

        static PlatformUserChoiceDetails fromList(ArrayList<Object> arrayList) {
            PlatformUserChoiceDetails platformUserChoiceDetails = new PlatformUserChoiceDetails();
            platformUserChoiceDetails.setOriginalExternalTransactionId((String) arrayList.get(0));
            platformUserChoiceDetails.setExternalTransactionToken((String) arrayList.get(1));
            platformUserChoiceDetails.setProducts((List) arrayList.get(2));
            return platformUserChoiceDetails;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || PlatformUserChoiceDetails.class != obj.getClass()) {
                return false;
            }
            PlatformUserChoiceDetails platformUserChoiceDetails = (PlatformUserChoiceDetails) obj;
            if (Objects.equals(this.originalExternalTransactionId, platformUserChoiceDetails.originalExternalTransactionId) && this.externalTransactionToken.equals(platformUserChoiceDetails.externalTransactionToken) && this.products.equals(platformUserChoiceDetails.products)) {
                return true;
            }
            return false;
        }

        public String getExternalTransactionToken() {
            return this.externalTransactionToken;
        }

        public String getOriginalExternalTransactionId() {
            return this.originalExternalTransactionId;
        }

        public List<PlatformUserChoiceProduct> getProducts() {
            return this.products;
        }

        public int hashCode() {
            return Objects.hash(this.originalExternalTransactionId, this.externalTransactionToken, this.products);
        }

        public void setExternalTransactionToken(String str) {
            if (str != null) {
                this.externalTransactionToken = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"externalTransactionToken\" is null.");
        }

        public void setOriginalExternalTransactionId(String str) {
            this.originalExternalTransactionId = str;
        }

        public void setProducts(List<PlatformUserChoiceProduct> list) {
            if (list != null) {
                this.products = list;
                return;
            }
            throw new IllegalStateException("Nonnull field \"products\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(3);
            arrayList.add(this.originalExternalTransactionId);
            arrayList.add(this.externalTransactionToken);
            arrayList.add(this.products);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class PlatformUserChoiceProduct {

        /* renamed from: id  reason: collision with root package name */
        private String f21761id;
        private String offerToken;
        private PlatformProductType type;

        /* loaded from: classes2.dex */
        public static final class Builder {

            /* renamed from: id  reason: collision with root package name */
            private String f21762id;
            private String offerToken;
            private PlatformProductType type;

            public PlatformUserChoiceProduct build() {
                PlatformUserChoiceProduct platformUserChoiceProduct = new PlatformUserChoiceProduct();
                platformUserChoiceProduct.setId(this.f21762id);
                platformUserChoiceProduct.setOfferToken(this.offerToken);
                platformUserChoiceProduct.setType(this.type);
                return platformUserChoiceProduct;
            }

            @CanIgnoreReturnValue
            public Builder setId(String str) {
                this.f21762id = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setOfferToken(String str) {
                this.offerToken = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setType(PlatformProductType platformProductType) {
                this.type = platformProductType;
                return this;
            }
        }

        PlatformUserChoiceProduct() {
        }

        static PlatformUserChoiceProduct fromList(ArrayList<Object> arrayList) {
            PlatformUserChoiceProduct platformUserChoiceProduct = new PlatformUserChoiceProduct();
            platformUserChoiceProduct.setId((String) arrayList.get(0));
            platformUserChoiceProduct.setOfferToken((String) arrayList.get(1));
            platformUserChoiceProduct.setType((PlatformProductType) arrayList.get(2));
            return platformUserChoiceProduct;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || PlatformUserChoiceProduct.class != obj.getClass()) {
                return false;
            }
            PlatformUserChoiceProduct platformUserChoiceProduct = (PlatformUserChoiceProduct) obj;
            if (this.f21761id.equals(platformUserChoiceProduct.f21761id) && Objects.equals(this.offerToken, platformUserChoiceProduct.offerToken) && this.type.equals(platformUserChoiceProduct.type)) {
                return true;
            }
            return false;
        }

        public String getId() {
            return this.f21761id;
        }

        public String getOfferToken() {
            return this.offerToken;
        }

        public PlatformProductType getType() {
            return this.type;
        }

        public int hashCode() {
            return Objects.hash(this.f21761id, this.offerToken, this.type);
        }

        public void setId(String str) {
            if (str != null) {
                this.f21761id = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"id\" is null.");
        }

        public void setOfferToken(String str) {
            this.offerToken = str;
        }

        public void setType(PlatformProductType platformProductType) {
            if (platformProductType != null) {
                this.type = platformProductType;
                return;
            }
            throw new IllegalStateException("Nonnull field \"type\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(3);
            arrayList.add(this.f21761id);
            arrayList.add(this.offerToken);
            arrayList.add(this.type);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public interface Result<T> {
        void error(Throwable th);

        void success(T t10);
    }

    /* loaded from: classes2.dex */
    public interface VoidResult {
        void error(Throwable th);

        void success();
    }

    protected static FlutterError createConnectionError(String str) {
        return new FlutterError("channel-error", "Unable to establish connection on channel: " + str + ".", "");
    }

    protected static ArrayList<Object> wrapError(Throwable th) {
        ArrayList<Object> arrayList = new ArrayList<>(3);
        if (th instanceof FlutterError) {
            FlutterError flutterError = (FlutterError) th;
            arrayList.add(flutterError.code);
            arrayList.add(flutterError.getMessage());
            arrayList.add(flutterError.details);
        } else {
            arrayList.add(th.toString());
            arrayList.add(th.getClass().getSimpleName());
            arrayList.add("Cause: " + th.getCause() + ", Stacktrace: " + Log.getStackTraceString(th));
        }
        return arrayList;
    }
}
