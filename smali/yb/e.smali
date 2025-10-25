.class public final Lyb/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/r;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/android/billingclient/api/d;

.field private final c:Lcom/yandex/metrica/impl/ob/j;

.field private final d:Lid/a;

.field private final e:Ljava/util/List;

.field private final f:Lyb/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/d;Lcom/yandex/metrica/impl/ob/j;Lid/a;Ljava/util/List;Lyb/g;)V
    .locals 1

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "billingClient"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "utilsProvider"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "billingInfoSentListener"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "purchaseHistoryRecords"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "billingLibraryConnectionHolder"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lyb/e;->a:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p2, p0, Lyb/e;->b:Lcom/android/billingclient/api/d;

    .line 37
    .line 38
    iput-object p3, p0, Lyb/e;->c:Lcom/yandex/metrica/impl/ob/j;

    .line 39
    .line 40
    iput-object p4, p0, Lyb/e;->d:Lid/a;

    .line 41
    .line 42
    iput-object p5, p0, Lyb/e;->e:Ljava/util/List;

    .line 43
    .line 44
    iput-object p6, p0, Lyb/e;->f:Lyb/g;

    .line 45
    .line 46
    return-void
.end method

.method private final b(Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->b()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_3

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    :goto_1
    if-eqz p1, :cond_2

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_2
    new-instance p1, Lyb/c;

    .line 23
    .line 24
    iget-object v1, p0, Lyb/e;->a:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v2, p0, Lyb/e;->c:Lcom/yandex/metrica/impl/ob/j;

    .line 27
    .line 28
    iget-object v3, p0, Lyb/e;->d:Lid/a;

    .line 29
    .line 30
    iget-object v4, p0, Lyb/e;->e:Ljava/util/List;

    .line 31
    .line 32
    iget-object v6, p0, Lyb/e;->f:Lyb/g;

    .line 33
    .line 34
    move-object v0, p1

    .line 35
    move-object v5, p2

    .line 36
    invoke-direct/range {v0 .. v6}, Lyb/c;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/j;Lid/a;Ljava/util/List;Ljava/util/List;Lyb/g;)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lyb/e;->f:Lyb/g;

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Lyb/g;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lyb/e;->c:Lcom/yandex/metrica/impl/ob/j;

    .line 45
    .line 46
    invoke-interface {p2}, Lcom/yandex/metrica/impl/ob/j;->c()Ljava/util/concurrent/Executor;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    new-instance v0, Lyb/e$b;

    .line 51
    .line 52
    invoke-direct {v0, p0, p1}, Lyb/e$b;-><init>(Lyb/e;Lyb/c;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    :goto_2
    return-void
.end method

.method public static final synthetic c(Lyb/e;)Lcom/android/billingclient/api/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lyb/e;->b:Lcom/android/billingclient/api/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lyb/e;)Lyb/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lyb/e;->f:Lyb/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lyb/e;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lyb/e;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lyb/e;)Lcom/yandex/metrica/impl/ob/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lyb/e;->c:Lcom/yandex/metrica/impl/ob/j;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lyb/e;Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lyb/e;->b(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 2

    .line 1
    const-string v0, "billingResult"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lyb/e;->c:Lcom/yandex/metrica/impl/ob/j;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/j;->a()Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lyb/e$a;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1, p2}, Lyb/e$a;-><init>(Lyb/e;Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
