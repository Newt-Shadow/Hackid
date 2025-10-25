package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
/* loaded from: classes.dex */
public class a implements x.b {

    /* renamed from: a  reason: collision with root package name */
    private final int f944a;

    /* renamed from: b  reason: collision with root package name */
    private final int f945b;

    /* renamed from: c  reason: collision with root package name */
    private final int f946c;

    /* renamed from: d  reason: collision with root package name */
    private CharSequence f947d;

    /* renamed from: e  reason: collision with root package name */
    private CharSequence f948e;

    /* renamed from: f  reason: collision with root package name */
    private Intent f949f;

    /* renamed from: g  reason: collision with root package name */
    private char f950g;

    /* renamed from: i  reason: collision with root package name */
    private char f952i;

    /* renamed from: k  reason: collision with root package name */
    private Drawable f954k;

    /* renamed from: l  reason: collision with root package name */
    private Context f955l;

    /* renamed from: m  reason: collision with root package name */
    private MenuItem.OnMenuItemClickListener f956m;

    /* renamed from: n  reason: collision with root package name */
    private CharSequence f957n;

    /* renamed from: o  reason: collision with root package name */
    private CharSequence f958o;

    /* renamed from: h  reason: collision with root package name */
    private int f951h = Base64Utils.IO_BUFFER_SIZE;

    /* renamed from: j  reason: collision with root package name */
    private int f953j = Base64Utils.IO_BUFFER_SIZE;

    /* renamed from: p  reason: collision with root package name */
    private ColorStateList f959p = null;

    /* renamed from: q  reason: collision with root package name */
    private PorterDuff.Mode f960q = null;

    /* renamed from: r  reason: collision with root package name */
    private boolean f961r = false;

    /* renamed from: s  reason: collision with root package name */
    private boolean f962s = false;

    /* renamed from: t  reason: collision with root package name */
    private int f963t = 16;

    public a(Context context, int i10, int i11, int i12, int i13, CharSequence charSequence) {
        this.f955l = context;
        this.f944a = i11;
        this.f945b = i10;
        this.f946c = i13;
        this.f947d = charSequence;
    }

    private void c() {
        Drawable drawable = this.f954k;
        if (drawable != null) {
            if (this.f961r || this.f962s) {
                Drawable j10 = w.a.j(drawable);
                this.f954k = j10;
                Drawable mutate = j10.mutate();
                this.f954k = mutate;
                if (this.f961r) {
                    w.a.g(mutate, this.f959p);
                }
                if (this.f962s) {
                    w.a.h(this.f954k, this.f960q);
                }
            }
        }
    }

    @Override // x.b
    public x.b a(d0.b bVar) {
        throw new UnsupportedOperationException();
    }

    @Override // x.b
    public d0.b b() {
        return null;
    }

    @Override // x.b, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // x.b, android.view.MenuItem
    /* renamed from: d */
    public x.b setActionView(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // x.b, android.view.MenuItem
    /* renamed from: e */
    public x.b setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // x.b, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // x.b, android.view.MenuItem
    /* renamed from: f */
    public x.b setShowAsActionFlags(int i10) {
        setShowAsAction(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // x.b, android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // x.b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f953j;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f952i;
    }

    @Override // x.b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f957n;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f945b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f954k;
    }

    @Override // x.b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f959p;
    }

    @Override // x.b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f960q;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f949f;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f944a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // x.b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f951h;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f950g;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f946c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f947d;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f948e;
        if (charSequence == null) {
            return this.f947d;
        }
        return charSequence;
    }

    @Override // x.b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f958o;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // x.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        if ((this.f963t & 1) != 0) {
            return true;
        }
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        if ((this.f963t & 2) != 0) {
            return true;
        }
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        if ((this.f963t & 16) != 0) {
            return true;
        }
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        if ((this.f963t & 8) == 0) {
            return true;
        }
        return false;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c10) {
        this.f952i = Character.toLowerCase(c10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z10) {
        this.f963t = (z10 ? 1 : 0) | (this.f963t & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z10) {
        int i10;
        int i11 = this.f963t & (-3);
        if (z10) {
            i10 = 2;
        } else {
            i10 = 0;
        }
        this.f963t = i10 | i11;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z10) {
        int i10;
        int i11 = this.f963t & (-17);
        if (z10) {
            i10 = 16;
        } else {
            i10 = 0;
        }
        this.f963t = i10 | i11;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f954k = drawable;
        c();
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f959p = colorStateList;
        this.f961r = true;
        c();
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f960q = mode;
        this.f962s = true;
        c();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f949f = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c10) {
        this.f950g = c10;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f956m = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c10, char c11) {
        this.f950g = c10;
        this.f952i = Character.toLowerCase(c11);
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public void setShowAsAction(int i10) {
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f947d = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f948e = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z10) {
        int i10 = 8;
        int i11 = this.f963t & 8;
        if (z10) {
            i10 = 0;
        }
        this.f963t = i11 | i10;
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c10, int i10) {
        this.f952i = Character.toLowerCase(c10);
        this.f953j = KeyEvent.normalizeMetaState(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public x.b setContentDescription(CharSequence charSequence) {
        this.f957n = charSequence;
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c10, int i10) {
        this.f950g = c10;
        this.f951h = KeyEvent.normalizeMetaState(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i10) {
        this.f947d = this.f955l.getResources().getString(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public x.b setTooltipText(CharSequence charSequence) {
        this.f958o = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i10) {
        this.f954k = androidx.core.content.a.e(this.f955l, i10);
        c();
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public MenuItem setShortcut(char c10, char c11, int i10, int i11) {
        this.f950g = c10;
        this.f951h = KeyEvent.normalizeMetaState(i10);
        this.f952i = Character.toLowerCase(c11);
        this.f953j = KeyEvent.normalizeMetaState(i11);
        return this;
    }
}
