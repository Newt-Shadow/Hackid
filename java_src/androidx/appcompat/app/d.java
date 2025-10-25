package androidx.appcompat.app;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.view.b;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.p1;
import androidx.core.app.x;
import androidx.lifecycle.n0;
import androidx.lifecycle.o0;
import h1.d;
/* loaded from: classes.dex */
public abstract class d extends androidx.fragment.app.u implements e, x.a {
    private static final String DELEGATE_TAG = "androidx:appcompat";
    private g mDelegate;
    private Resources mResources;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements d.c {
        a() {
        }

        @Override // h1.d.c
        public Bundle a() {
            Bundle bundle = new Bundle();
            d.this.getDelegate().C(bundle);
            return bundle;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements e.b {
        b() {
        }

        @Override // e.b
        public void a(Context context) {
            g delegate = d.this.getDelegate();
            delegate.t();
            delegate.y(d.this.getSavedStateRegistry().b(d.DELEGATE_TAG));
        }
    }

    public d() {
        A();
    }

    private void A() {
        getSavedStateRegistry().h(DELEGATE_TAG, new a());
        addOnContextAvailableListener(new b());
    }

    private void B() {
        n0.a(getWindow().getDecorView(), this);
        o0.a(getWindow().getDecorView(), this);
        h1.g.a(getWindow().getDecorView(), this);
        androidx.activity.b0.a(getWindow().getDecorView(), this);
    }

    private boolean C(KeyEvent keyEvent) {
        Window window;
        if (Build.VERSION.SDK_INT < 26 && !keyEvent.isCtrlPressed() && !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) && keyEvent.getRepeatCount() == 0 && !KeyEvent.isModifierKey(keyEvent.getKeyCode()) && (window = getWindow()) != null && window.getDecorView() != null && window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) {
            return true;
        }
        return false;
    }

    @Override // androidx.activity.j, android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        B();
        getDelegate().e(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(getDelegate().g(context));
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.g()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override // androidx.core.app.g, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (keyCode == 82 && supportActionBar != null && supportActionBar.r(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i10) {
        return (T) getDelegate().j(i10);
    }

    public g getDelegate() {
        if (this.mDelegate == null) {
            this.mDelegate = g.h(this, this);
        }
        return this.mDelegate;
    }

    public androidx.appcompat.app.b getDrawerToggleDelegate() {
        return getDelegate().n();
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        return getDelegate().q();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.mResources == null && p1.c()) {
            this.mResources = new p1(this, super.getResources());
        }
        Resources resources = this.mResources;
        if (resources == null) {
            return super.getResources();
        }
        return resources;
    }

    public androidx.appcompat.app.a getSupportActionBar() {
        return getDelegate().s();
    }

    @Override // androidx.core.app.x.a
    public Intent getSupportParentActivityIntent() {
        return androidx.core.app.i.a(this);
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        getDelegate().u();
    }

    @Override // androidx.activity.j, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        getDelegate().x(configuration);
        if (this.mResources != null) {
            this.mResources.updateConfiguration(super.getResources().getConfiguration(), super.getResources().getDisplayMetrics());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        onSupportContentChanged();
    }

    public void onCreateSupportNavigateUpTaskStack(androidx.core.app.x xVar) {
        xVar.g(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.u, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        getDelegate().z();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (C(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onLocalesChanged(z.i iVar) {
    }

    @Override // androidx.fragment.app.u, androidx.activity.j, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i10, MenuItem menuItem) {
        if (super.onMenuItemSelected(i10, menuItem)) {
            return true;
        }
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (menuItem.getItemId() == 16908332 && supportActionBar != null && (supportActionBar.j() & 4) != 0) {
            return onSupportNavigateUp();
        }
        return false;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i10, Menu menu) {
        return super.onMenuOpened(i10, menu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onNightModeChanged(int i10) {
    }

    @Override // androidx.activity.j, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i10, Menu menu) {
        super.onPanelClosed(i10, menu);
    }

    @Override // android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        getDelegate().A(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.u, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        getDelegate().B();
    }

    public void onPrepareSupportNavigateUpTaskStack(androidx.core.app.x xVar) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.u, android.app.Activity
    public void onStart() {
        super.onStart();
        getDelegate().D();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.u, android.app.Activity
    public void onStop() {
        super.onStop();
        getDelegate().E();
    }

    @Override // androidx.appcompat.app.e
    public void onSupportActionModeFinished(androidx.appcompat.view.b bVar) {
    }

    @Override // androidx.appcompat.app.e
    public void onSupportActionModeStarted(androidx.appcompat.view.b bVar) {
    }

    @Deprecated
    public void onSupportContentChanged() {
    }

    public boolean onSupportNavigateUp() {
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent != null) {
            if (supportShouldUpRecreateTask(supportParentActivityIntent)) {
                androidx.core.app.x l10 = androidx.core.app.x.l(this);
                onCreateSupportNavigateUpTaskStack(l10);
                onPrepareSupportNavigateUpTaskStack(l10);
                l10.m();
                try {
                    androidx.core.app.b.q(this);
                    return true;
                } catch (IllegalStateException unused) {
                    finish();
                    return true;
                }
            }
            supportNavigateUpTo(supportParentActivityIntent);
            return true;
        }
        return false;
    }

    @Override // android.app.Activity
    protected void onTitleChanged(CharSequence charSequence, int i10) {
        super.onTitleChanged(charSequence, i10);
        getDelegate().O(charSequence);
    }

    @Override // androidx.appcompat.app.e
    public androidx.appcompat.view.b onWindowStartingSupportActionMode(b.a aVar) {
        return null;
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.s()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // androidx.activity.j, android.app.Activity
    public void setContentView(int i10) {
        B();
        getDelegate().I(i10);
    }

    public void setSupportActionBar(Toolbar toolbar) {
        getDelegate().M(toolbar);
    }

    @Deprecated
    public void setSupportProgress(int i10) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminate(boolean z10) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminateVisibility(boolean z10) {
    }

    @Deprecated
    public void setSupportProgressBarVisibility(boolean z10) {
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i10) {
        super.setTheme(i10);
        getDelegate().N(i10);
    }

    public androidx.appcompat.view.b startSupportActionMode(b.a aVar) {
        return getDelegate().P(aVar);
    }

    @Override // androidx.fragment.app.u
    public void supportInvalidateOptionsMenu() {
        getDelegate().u();
    }

    public void supportNavigateUpTo(Intent intent) {
        androidx.core.app.i.e(this, intent);
    }

    public boolean supportRequestWindowFeature(int i10) {
        return getDelegate().H(i10);
    }

    public boolean supportShouldUpRecreateTask(Intent intent) {
        return androidx.core.app.i.f(this, intent);
    }

    @Override // androidx.activity.j, android.app.Activity
    public void setContentView(View view) {
        B();
        getDelegate().J(view);
    }

    @Override // androidx.activity.j, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        B();
        getDelegate().K(view, layoutParams);
    }
}
