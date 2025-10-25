.class public Lcom/yandex/metrica/uiaccessor/FragmentLifecycleCallback;
.super Landroidx/fragment/app/i0$k;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/uiaccessor/a$a;

.field private final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/uiaccessor/a$a;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/i0$k;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/uiaccessor/FragmentLifecycleCallback;->a:Lcom/yandex/metrica/uiaccessor/a$a;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/yandex/metrica/uiaccessor/FragmentLifecycleCallback;->b:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public onFragmentAttached(Landroidx/fragment/app/i0;Landroidx/fragment/app/p;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/i0$k;->onFragmentAttached(Landroidx/fragment/app/i0;Landroidx/fragment/app/p;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/yandex/metrica/uiaccessor/FragmentLifecycleCallback;->b:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/app/Activity;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Lcom/yandex/metrica/uiaccessor/FragmentLifecycleCallback;->a:Lcom/yandex/metrica/uiaccessor/a$a;

    .line 15
    .line 16
    invoke-interface {p2, p1}, Lcom/yandex/metrica/uiaccessor/a$a;->fragmentAttached(Landroid/app/Activity;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
