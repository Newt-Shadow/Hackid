.class public final Lyb/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Lcom/android/billingclient/api/d;

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/d;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "billingClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyb/g;->b:Lcom/android/billingclient/api/d;

    iput-object p2, p0, Lyb/g;->c:Landroid/os/Handler;

    .line 2
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lyb/g;->a:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/billingclient/api/d;Landroid/os/Handler;I)V
    .locals 0

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lyb/g;-><init>(Lcom/android/billingclient/api/d;Landroid/os/Handler;)V

    return-void
.end method

.method public static final synthetic a(Lyb/g;)Lcom/android/billingclient/api/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lyb/g;->b:Lcom/android/billingclient/api/d;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lyb/g;->a:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lyb/g;->a:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lyb/g;->a:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lyb/g;->c:Landroid/os/Handler;

    .line 20
    .line 21
    new-instance v0, Lyb/f;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lyb/f;-><init>(Lyb/g;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
