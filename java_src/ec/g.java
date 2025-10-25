package ec;

import com.yandex.metrica.rtm.client.DataSender;
import com.yandex.metrica.rtm.client.ReporterDescriptor;
/* loaded from: classes2.dex */
public class g implements d {

    /* renamed from: a  reason: collision with root package name */
    private final DataSender f15522a;

    public g(k kVar, String str, boolean z10) {
        this(new b(new DataSender(new m(kVar), new ReporterDescriptor(str, z10))));
    }

    g(b bVar) {
        this.f15522a = bVar.a();
    }
}
