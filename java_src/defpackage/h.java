package defpackage;

import defpackage.h;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import java.util.List;
import kotlin.jvm.internal.m;
import xc.d;
import xc.f;
import yc.n;
/* renamed from: h  reason: default package */
/* loaded from: classes.dex */
public interface h {

    /* renamed from: g0  reason: collision with root package name */
    public static final a f16438g0 = a.f16439a;

    /* renamed from: h$a */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f16439a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static final d f16440b;

        static {
            d a10;
            a10 = f.a(new id.a() { // from class: e
                @Override // id.a
                public final Object invoke() {
                    i d10;
                    d10 = h.a.d();
                    return d10;
                }
            });
            f16440b = a10;
        }

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final i d() {
            return i.f17063a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void g(h hVar, Object obj, BasicMessageChannel.Reply reply) {
            List b10;
            m.e(reply, "reply");
            m.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            Object obj2 = ((List) obj).get(0);
            m.c(obj2, "null cannot be cast to non-null type <root>.ToggleMessage");
            try {
                hVar.a((d) obj2);
                b10 = n.b(null);
            } catch (Throwable th) {
                b10 = j.b(th);
            }
            reply.reply(b10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void h(h hVar, Object obj, BasicMessageChannel.Reply reply) {
            List b10;
            m.e(reply, "reply");
            try {
                b10 = n.b(hVar.isEnabled());
            } catch (Throwable th) {
                b10 = j.b(th);
            }
            reply.reply(b10);
        }

        public final MessageCodec e() {
            return (MessageCodec) f16440b.getValue();
        }

        public final void f(BinaryMessenger binaryMessenger, final h hVar) {
            m.e(binaryMessenger, "binaryMessenger");
            BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.toggle", e());
            if (hVar != null) {
                basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: f
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        h.a.g(h.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.isEnabled", e());
            if (hVar != null) {
                basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: g
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        h.a.h(h.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel2.setMessageHandler(null);
            }
        }
    }

    void a(d dVar);

    c isEnabled();
}
