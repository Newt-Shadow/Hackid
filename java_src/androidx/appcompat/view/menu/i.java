package androidx.appcompat.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.n;
import d0.b;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
/* loaded from: classes.dex */
public final class i implements x.b {
    private View A;
    private d0.b B;
    private MenuItem.OnActionExpandListener C;
    private ContextMenu.ContextMenuInfo E;

    /* renamed from: a  reason: collision with root package name */
    private final int f1059a;

    /* renamed from: b  reason: collision with root package name */
    private final int f1060b;

    /* renamed from: c  reason: collision with root package name */
    private final int f1061c;

    /* renamed from: d  reason: collision with root package name */
    private final int f1062d;

    /* renamed from: e  reason: collision with root package name */
    private CharSequence f1063e;

    /* renamed from: f  reason: collision with root package name */
    private CharSequence f1064f;

    /* renamed from: g  reason: collision with root package name */
    private Intent f1065g;

    /* renamed from: h  reason: collision with root package name */
    private char f1066h;

    /* renamed from: j  reason: collision with root package name */
    private char f1068j;

    /* renamed from: l  reason: collision with root package name */
    private Drawable f1070l;

    /* renamed from: n  reason: collision with root package name */
    g f1072n;

    /* renamed from: o  reason: collision with root package name */
    private r f1073o;

    /* renamed from: p  reason: collision with root package name */
    private Runnable f1074p;

    /* renamed from: q  reason: collision with root package name */
    private MenuItem.OnMenuItemClickListener f1075q;

    /* renamed from: r  reason: collision with root package name */
    private CharSequence f1076r;

    /* renamed from: s  reason: collision with root package name */
    private CharSequence f1077s;

    /* renamed from: z  reason: collision with root package name */
    private int f1084z;

    /* renamed from: i  reason: collision with root package name */
    private int f1067i = Base64Utils.IO_BUFFER_SIZE;

    /* renamed from: k  reason: collision with root package name */
    private int f1069k = Base64Utils.IO_BUFFER_SIZE;

    /* renamed from: m  reason: collision with root package name */
    private int f1071m = 0;

    /* renamed from: t  reason: collision with root package name */
    private ColorStateList f1078t = null;

    /* renamed from: u  reason: collision with root package name */
    private PorterDuff.Mode f1079u = null;

    /* renamed from: v  reason: collision with root package name */
    private boolean f1080v = false;

    /* renamed from: w  reason: collision with root package name */
    private boolean f1081w = false;

    /* renamed from: x  reason: collision with root package name */
    private boolean f1082x = false;

    /* renamed from: y  reason: collision with root package name */
    private int f1083y = 16;
    private boolean D = false;

    /* loaded from: classes.dex */
    class a implements b.InterfaceC0140b {
        a() {
        }

        @Override // d0.b.InterfaceC0140b
        public void onActionProviderVisibilityChanged(boolean z10) {
            i iVar = i.this;
            iVar.f1072n.J(iVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(g gVar, int i10, int i11, int i12, int i13, CharSequence charSequence, int i14) {
        this.f1072n = gVar;
        this.f1059a = i11;
        this.f1060b = i10;
        this.f1061c = i12;
        this.f1062d = i13;
        this.f1063e = charSequence;
        this.f1084z = i14;
    }

    private static void d(StringBuilder sb2, int i10, int i11, String str) {
        if ((i10 & i11) == i11) {
            sb2.append(str);
        }
    }

    private Drawable e(Drawable drawable) {
        if (drawable != null && this.f1082x && (this.f1080v || this.f1081w)) {
            drawable = w.a.j(drawable).mutate();
            if (this.f1080v) {
                w.a.g(drawable, this.f1078t);
            }
            if (this.f1081w) {
                w.a.h(drawable, this.f1079u);
            }
            this.f1082x = false;
        }
        return drawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean A() {
        if (this.f1072n.H() && g() != 0) {
            return true;
        }
        return false;
    }

    public boolean B() {
        if ((this.f1084z & 4) == 4) {
            return true;
        }
        return false;
    }

    @Override // x.b
    public x.b a(d0.b bVar) {
        d0.b bVar2 = this.B;
        if (bVar2 != null) {
            bVar2.g();
        }
        this.A = null;
        this.B = bVar;
        this.f1072n.K(true);
        d0.b bVar3 = this.B;
        if (bVar3 != null) {
            bVar3.i(new a());
        }
        return this;
    }

    @Override // x.b
    public d0.b b() {
        return this.B;
    }

    public void c() {
        this.f1072n.I(this);
    }

    @Override // x.b, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.f1084z & 8) == 0) {
            return false;
        }
        if (this.A == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.C;
        if (onActionExpandListener != null && !onActionExpandListener.onMenuItemActionCollapse(this)) {
            return false;
        }
        return this.f1072n.f(this);
    }

    @Override // x.b, android.view.MenuItem
    public boolean expandActionView() {
        if (!j()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.C;
        if (onActionExpandListener != null && !onActionExpandListener.onMenuItemActionExpand(this)) {
            return false;
        }
        return this.f1072n.k(this);
    }

    public int f() {
        return this.f1062d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public char g() {
        if (this.f1072n.G()) {
            return this.f1068j;
        }
        return this.f1066h;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // x.b, android.view.MenuItem
    public View getActionView() {
        View view = this.A;
        if (view != null) {
            return view;
        }
        d0.b bVar = this.B;
        if (bVar != null) {
            View c10 = bVar.c(this);
            this.A = c10;
            return c10;
        }
        return null;
    }

    @Override // x.b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f1069k;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f1068j;
    }

    @Override // x.b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f1076r;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f1060b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        Drawable drawable = this.f1070l;
        if (drawable != null) {
            return e(drawable);
        }
        if (this.f1071m != 0) {
            Drawable b10 = i.a.b(this.f1072n.u(), this.f1071m);
            this.f1071m = 0;
            this.f1070l = b10;
            return e(b10);
        }
        return null;
    }

    @Override // x.b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f1078t;
    }

    @Override // x.b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f1079u;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f1065g;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f1059a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.E;
    }

    @Override // x.b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f1067i;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f1066h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f1061c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.f1073o;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f1063e;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f1064f;
        if (charSequence == null) {
            return this.f1063e;
        }
        return charSequence;
    }

    @Override // x.b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f1077s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String h() {
        int i10;
        char g10 = g();
        if (g10 == 0) {
            return "";
        }
        Resources resources = this.f1072n.u().getResources();
        StringBuilder sb2 = new StringBuilder();
        if (ViewConfiguration.get(this.f1072n.u()).hasPermanentMenuKey()) {
            sb2.append(resources.getString(h.h.f16573m));
        }
        if (this.f1072n.G()) {
            i10 = this.f1069k;
        } else {
            i10 = this.f1067i;
        }
        d(sb2, i10, 65536, resources.getString(h.h.f16569i));
        d(sb2, i10, Base64Utils.IO_BUFFER_SIZE, resources.getString(h.h.f16565e));
        d(sb2, i10, 2, resources.getString(h.h.f16564d));
        d(sb2, i10, 1, resources.getString(h.h.f16570j));
        d(sb2, i10, 4, resources.getString(h.h.f16572l));
        d(sb2, i10, 8, resources.getString(h.h.f16568h));
        if (g10 != '\b') {
            if (g10 != '\n') {
                if (g10 != ' ') {
                    sb2.append(g10);
                } else {
                    sb2.append(resources.getString(h.h.f16571k));
                }
            } else {
                sb2.append(resources.getString(h.h.f16567g));
            }
        } else {
            sb2.append(resources.getString(h.h.f16566f));
        }
        return sb2.toString();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        if (this.f1073o != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence i(n.a aVar) {
        if (aVar != null && aVar.c()) {
            return getTitleCondensed();
        }
        return getTitle();
    }

    @Override // x.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.D;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        if ((this.f1083y & 1) == 1) {
            return true;
        }
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        if ((this.f1083y & 2) == 2) {
            return true;
        }
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        if ((this.f1083y & 16) != 0) {
            return true;
        }
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        d0.b bVar = this.B;
        if (bVar != null && bVar.f()) {
            if ((this.f1083y & 8) == 0 && this.B.b()) {
                return true;
            }
            return false;
        } else if ((this.f1083y & 8) == 0) {
            return true;
        } else {
            return false;
        }
    }

    public boolean j() {
        d0.b bVar;
        if ((this.f1084z & 8) == 0) {
            return false;
        }
        if (this.A == null && (bVar = this.B) != null) {
            this.A = bVar.c(this);
        }
        if (this.A == null) {
            return false;
        }
        return true;
    }

    public boolean k() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.f1075q;
        if (onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(this)) {
            return true;
        }
        g gVar = this.f1072n;
        if (gVar.h(gVar, this)) {
            return true;
        }
        Runnable runnable = this.f1074p;
        if (runnable != null) {
            runnable.run();
            return true;
        }
        if (this.f1065g != null) {
            try {
                this.f1072n.u().startActivity(this.f1065g);
                return true;
            } catch (ActivityNotFoundException e10) {
                Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e10);
            }
        }
        d0.b bVar = this.B;
        if (bVar != null && bVar.d()) {
            return true;
        }
        return false;
    }

    public boolean l() {
        if ((this.f1083y & 32) == 32) {
            return true;
        }
        return false;
    }

    public boolean m() {
        if ((this.f1083y & 4) != 0) {
            return true;
        }
        return false;
    }

    public boolean n() {
        if ((this.f1084z & 1) == 1) {
            return true;
        }
        return false;
    }

    public boolean o() {
        if ((this.f1084z & 2) == 2) {
            return true;
        }
        return false;
    }

    @Override // x.b, android.view.MenuItem
    /* renamed from: p */
    public x.b setActionView(int i10) {
        Context u10 = this.f1072n.u();
        setActionView(LayoutInflater.from(u10).inflate(i10, (ViewGroup) new LinearLayout(u10), false));
        return this;
    }

    @Override // x.b, android.view.MenuItem
    /* renamed from: q */
    public x.b setActionView(View view) {
        int i10;
        this.A = view;
        this.B = null;
        if (view != null && view.getId() == -1 && (i10 = this.f1059a) > 0) {
            view.setId(i10);
        }
        this.f1072n.I(this);
        return this;
    }

    public void r(boolean z10) {
        this.D = z10;
        this.f1072n.K(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(boolean z10) {
        int i10;
        int i11 = this.f1083y;
        int i12 = i11 & (-3);
        if (z10) {
            i10 = 2;
        } else {
            i10 = 0;
        }
        int i13 = i10 | i12;
        this.f1083y = i13;
        if (i11 != i13) {
            this.f1072n.K(false);
        }
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c10) {
        if (this.f1068j == c10) {
            return this;
        }
        this.f1068j = Character.toLowerCase(c10);
        this.f1072n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z10) {
        int i10 = this.f1083y;
        int i11 = (z10 ? 1 : 0) | (i10 & (-2));
        this.f1083y = i11;
        if (i10 != i11) {
            this.f1072n.K(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z10) {
        if ((this.f1083y & 4) != 0) {
            this.f1072n.T(this);
        } else {
            s(z10);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z10) {
        if (z10) {
            this.f1083y |= 16;
        } else {
            this.f1083y &= -17;
        }
        this.f1072n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f1071m = 0;
        this.f1070l = drawable;
        this.f1082x = true;
        this.f1072n.K(false);
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f1078t = colorStateList;
        this.f1080v = true;
        this.f1082x = true;
        this.f1072n.K(false);
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f1079u = mode;
        this.f1081w = true;
        this.f1082x = true;
        this.f1072n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f1065g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c10) {
        if (this.f1066h == c10) {
            return this;
        }
        this.f1066h = c10;
        this.f1072n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.C = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f1075q = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c10, char c11) {
        this.f1066h = c10;
        this.f1068j = Character.toLowerCase(c11);
        this.f1072n.K(false);
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public void setShowAsAction(int i10) {
        int i11 = i10 & 3;
        if (i11 != 0 && i11 != 1 && i11 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f1084z = i10;
        this.f1072n.I(this);
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f1063e = charSequence;
        this.f1072n.K(false);
        r rVar = this.f1073o;
        if (rVar != null) {
            rVar.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f1064f = charSequence;
        this.f1072n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z10) {
        if (y(z10)) {
            this.f1072n.J(this);
        }
        return this;
    }

    public void t(boolean z10) {
        int i10;
        int i11 = this.f1083y & (-5);
        if (z10) {
            i10 = 4;
        } else {
            i10 = 0;
        }
        this.f1083y = i10 | i11;
    }

    public String toString() {
        CharSequence charSequence = this.f1063e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    public void u(boolean z10) {
        if (z10) {
            this.f1083y |= 32;
        } else {
            this.f1083y &= -33;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.E = contextMenuInfo;
    }

    @Override // x.b, android.view.MenuItem
    /* renamed from: w */
    public x.b setShowAsActionFlags(int i10) {
        setShowAsAction(i10);
        return this;
    }

    public void x(r rVar) {
        this.f1073o = rVar;
        rVar.setHeaderTitle(getTitle());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean y(boolean z10) {
        int i10;
        int i11 = this.f1083y;
        int i12 = i11 & (-9);
        if (z10) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        int i13 = i10 | i12;
        this.f1083y = i13;
        if (i11 == i13) {
            return false;
        }
        return true;
    }

    public boolean z() {
        return this.f1072n.A();
    }

    @Override // android.view.MenuItem
    public x.b setContentDescription(CharSequence charSequence) {
        this.f1076r = charSequence;
        this.f1072n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public x.b setTooltipText(CharSequence charSequence) {
        this.f1077s = charSequence;
        this.f1072n.K(false);
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c10, int i10) {
        if (this.f1068j == c10 && this.f1069k == i10) {
            return this;
        }
        this.f1068j = Character.toLowerCase(c10);
        this.f1069k = KeyEvent.normalizeMetaState(i10);
        this.f1072n.K(false);
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c10, int i10) {
        if (this.f1066h == c10 && this.f1067i == i10) {
            return this;
        }
        this.f1066h = c10;
        this.f1067i = KeyEvent.normalizeMetaState(i10);
        this.f1072n.K(false);
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public MenuItem setShortcut(char c10, char c11, int i10, int i11) {
        this.f1066h = c10;
        this.f1067i = KeyEvent.normalizeMetaState(i10);
        this.f1068j = Character.toLowerCase(c11);
        this.f1069k = KeyEvent.normalizeMetaState(i11);
        this.f1072n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i10) {
        this.f1070l = null;
        this.f1071m = i10;
        this.f1082x = true;
        this.f1072n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i10) {
        return setTitle(this.f1072n.u().getString(i10));
    }
}
