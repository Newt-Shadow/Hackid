package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import d0.b;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class j extends androidx.appcompat.view.menu.c implements MenuItem {

    /* renamed from: d  reason: collision with root package name */
    private final x.b f1086d;

    /* renamed from: e  reason: collision with root package name */
    private Method f1087e;

    /* loaded from: classes.dex */
    private class a extends d0.b {

        /* renamed from: d  reason: collision with root package name */
        final ActionProvider f1088d;

        a(Context context, ActionProvider actionProvider) {
            super(context);
            this.f1088d = actionProvider;
        }

        @Override // d0.b
        public boolean a() {
            return this.f1088d.hasSubMenu();
        }

        @Override // d0.b
        public boolean d() {
            return this.f1088d.onPerformDefaultAction();
        }

        @Override // d0.b
        public void e(SubMenu subMenu) {
            this.f1088d.onPrepareSubMenu(j.this.d(subMenu));
        }
    }

    /* loaded from: classes.dex */
    private class b extends a implements ActionProvider.VisibilityListener {

        /* renamed from: f  reason: collision with root package name */
        private b.InterfaceC0140b f1090f;

        b(Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        @Override // d0.b
        public boolean b() {
            return this.f1088d.isVisible();
        }

        @Override // d0.b
        public View c(MenuItem menuItem) {
            return this.f1088d.onCreateActionView(menuItem);
        }

        @Override // d0.b
        public boolean f() {
            return this.f1088d.overridesItemVisibility();
        }

        @Override // d0.b
        public void i(b.InterfaceC0140b interfaceC0140b) {
            b bVar;
            this.f1090f = interfaceC0140b;
            ActionProvider actionProvider = this.f1088d;
            if (interfaceC0140b != null) {
                bVar = this;
            } else {
                bVar = null;
            }
            actionProvider.setVisibilityListener(bVar);
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z10) {
            b.InterfaceC0140b interfaceC0140b = this.f1090f;
            if (interfaceC0140b != null) {
                interfaceC0140b.onActionProviderVisibilityChanged(z10);
            }
        }
    }

    /* loaded from: classes.dex */
    static class c extends FrameLayout implements androidx.appcompat.view.c {

        /* renamed from: a  reason: collision with root package name */
        final CollapsibleActionView f1092a;

        c(View view) {
            super(view.getContext());
            this.f1092a = (CollapsibleActionView) view;
            addView(view);
        }

        View a() {
            return (View) this.f1092a;
        }

        @Override // androidx.appcompat.view.c
        public void c() {
            this.f1092a.onActionViewExpanded();
        }

        @Override // androidx.appcompat.view.c
        public void d() {
            this.f1092a.onActionViewCollapsed();
        }
    }

    /* loaded from: classes.dex */
    private class d implements MenuItem.OnActionExpandListener {

        /* renamed from: a  reason: collision with root package name */
        private final MenuItem.OnActionExpandListener f1093a;

        d(MenuItem.OnActionExpandListener onActionExpandListener) {
            this.f1093a = onActionExpandListener;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f1093a.onMenuItemActionCollapse(j.this.c(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f1093a.onMenuItemActionExpand(j.this.c(menuItem));
        }
    }

    /* loaded from: classes.dex */
    private class e implements MenuItem.OnMenuItemClickListener {

        /* renamed from: a  reason: collision with root package name */
        private final MenuItem.OnMenuItemClickListener f1095a;

        e(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            this.f1095a = onMenuItemClickListener;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return this.f1095a.onMenuItemClick(j.this.c(menuItem));
        }
    }

    public j(Context context, x.b bVar) {
        super(context);
        if (bVar != null) {
            this.f1086d = bVar;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return this.f1086d.collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return this.f1086d.expandActionView();
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        d0.b b10 = this.f1086d.b();
        if (b10 instanceof a) {
            return ((a) b10).f1088d;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        View actionView = this.f1086d.getActionView();
        if (actionView instanceof c) {
            return ((c) actionView).a();
        }
        return actionView;
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f1086d.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f1086d.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f1086d.getContentDescription();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f1086d.getGroupId();
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f1086d.getIcon();
    }

    @Override // android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f1086d.getIconTintList();
    }

    @Override // android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f1086d.getIconTintMode();
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f1086d.getIntent();
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f1086d.getItemId();
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f1086d.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return this.f1086d.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f1086d.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f1086d.getOrder();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return d(this.f1086d.getSubMenu());
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f1086d.getTitle();
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return this.f1086d.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f1086d.getTooltipText();
    }

    public void h(boolean z10) {
        try {
            if (this.f1087e == null) {
                this.f1087e = this.f1086d.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.f1087e.invoke(this.f1086d, Boolean.valueOf(z10));
        } catch (Exception e10) {
            Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e10);
        }
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f1086d.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f1086d.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return this.f1086d.isCheckable();
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return this.f1086d.isChecked();
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return this.f1086d.isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return this.f1086d.isVisible();
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        b bVar = new b(this.f974a, actionProvider);
        x.b bVar2 = this.f1086d;
        if (actionProvider == null) {
            bVar = null;
        }
        bVar2.a(bVar);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        if (view instanceof CollapsibleActionView) {
            view = new c(view);
        }
        this.f1086d.setActionView(view);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c10) {
        this.f1086d.setAlphabeticShortcut(c10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z10) {
        this.f1086d.setCheckable(z10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z10) {
        this.f1086d.setChecked(z10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        this.f1086d.setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z10) {
        this.f1086d.setEnabled(z10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f1086d.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f1086d.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f1086d.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f1086d.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c10) {
        this.f1086d.setNumericShortcut(c10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        d dVar;
        x.b bVar = this.f1086d;
        if (onActionExpandListener != null) {
            dVar = new d(onActionExpandListener);
        } else {
            dVar = null;
        }
        bVar.setOnActionExpandListener(dVar);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        e eVar;
        x.b bVar = this.f1086d;
        if (onMenuItemClickListener != null) {
            eVar = new e(onMenuItemClickListener);
        } else {
            eVar = null;
        }
        bVar.setOnMenuItemClickListener(eVar);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c10, char c11) {
        this.f1086d.setShortcut(c10, c11);
        return this;
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i10) {
        this.f1086d.setShowAsAction(i10);
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i10) {
        this.f1086d.setShowAsActionFlags(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f1086d.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f1086d.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        this.f1086d.setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z10) {
        return this.f1086d.setVisible(z10);
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c10, int i10) {
        this.f1086d.setAlphabeticShortcut(c10, i10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i10) {
        this.f1086d.setIcon(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c10, int i10) {
        this.f1086d.setNumericShortcut(c10, i10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c10, char c11, int i10, int i11) {
        this.f1086d.setShortcut(c10, c11, i10, i11);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i10) {
        this.f1086d.setTitle(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i10) {
        this.f1086d.setActionView(i10);
        View actionView = this.f1086d.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            this.f1086d.setActionView(new c(actionView));
        }
        return this;
    }
}
