.class public Lcom/yandex/metrica/uiaccessor/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfc/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/uiaccessor/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/uiaccessor/a$a;

.field private b:Landroidx/fragment/app/i0$k;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/uiaccessor/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/uiaccessor/a;->a:Lcom/yandex/metrica/uiaccessor/a$a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public subscribe(Landroid/app/Activity;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/fragment/app/u;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/uiaccessor/a;->b:Landroidx/fragment/app/i0$k;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/yandex/metrica/uiaccessor/FragmentLifecycleCallback;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/uiaccessor/a;->a:Lcom/yandex/metrica/uiaccessor/a$a;

    .line 12
    .line 13
    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/uiaccessor/FragmentLifecycleCallback;-><init>(Lcom/yandex/metrica/uiaccessor/a$a;Landroid/app/Activity;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/yandex/metrica/uiaccessor/a;->b:Landroidx/fragment/app/i0$k;

    .line 17
    .line 18
    :cond_0
    check-cast p1, Landroidx/fragment/app/u;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/fragment/app/u;->getSupportFragmentManager()Landroidx/fragment/app/i0;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/yandex/metrica/uiaccessor/a;->b:Landroidx/fragment/app/i0$k;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroidx/fragment/app/i0;->A1(Landroidx/fragment/app/i0$k;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/uiaccessor/a;->b:Landroidx/fragment/app/i0$k;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/i0;->k1(Landroidx/fragment/app/i0$k;Z)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public unsubscribe(Landroid/app/Activity;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/fragment/app/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/uiaccessor/a;->b:Landroidx/fragment/app/i0$k;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Landroidx/fragment/app/u;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/u;->getSupportFragmentManager()Landroidx/fragment/app/i0;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/uiaccessor/a;->b:Landroidx/fragment/app/i0$k;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroidx/fragment/app/i0;->A1(Landroidx/fragment/app/i0$k;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
