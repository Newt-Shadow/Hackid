package androidx.webkit.internal;

import java.util.Set;
import org.chromium.support_lib_boundary.WebSettingsBoundaryInterface;
/* loaded from: classes.dex */
public class k1 {

    /* renamed from: a  reason: collision with root package name */
    private final WebSettingsBoundaryInterface f3567a;

    public k1(WebSettingsBoundaryInterface webSettingsBoundaryInterface) {
        this.f3567a = webSettingsBoundaryInterface;
    }

    public int a() {
        return this.f3567a.getDisabledActionModeMenuItems();
    }

    public boolean b() {
        return this.f3567a.getEnterpriseAuthenticationAppLinkPolicyEnabled();
    }

    public int c() {
        return this.f3567a.getForceDark();
    }

    public boolean d() {
        return this.f3567a.getOffscreenPreRaster();
    }

    public Set e() {
        return this.f3567a.getRequestedWithHeaderOriginAllowList();
    }

    public boolean f() {
        return this.f3567a.getSafeBrowsingEnabled();
    }

    public boolean g() {
        return this.f3567a.isAlgorithmicDarkeningAllowed();
    }

    public void h(boolean z10) {
        this.f3567a.setAlgorithmicDarkeningAllowed(z10);
    }

    public void i(int i10) {
        this.f3567a.setDisabledActionModeMenuItems(i10);
    }

    public void j(boolean z10) {
        this.f3567a.setEnterpriseAuthenticationAppLinkPolicyEnabled(z10);
    }

    public void k(int i10) {
        this.f3567a.setForceDark(i10);
    }

    public void l(int i10) {
        this.f3567a.setForceDarkBehavior(i10);
    }

    public void m(boolean z10) {
        this.f3567a.setOffscreenPreRaster(z10);
    }

    public void n(Set set) {
        this.f3567a.setRequestedWithHeaderOriginAllowList(set);
    }

    public void o(boolean z10) {
        this.f3567a.setSafeBrowsingEnabled(z10);
    }
}
