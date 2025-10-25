.class public final Lwb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwb/d;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lwb/b;->a:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lwb/b;->b:Ljava/util/List;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic a(Lwb/b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb/b;->b:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic b(Lwb/b;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lwb/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lwb/a;)V
    .locals 2

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/appset/AppSet;->a(Landroid/content/Context;)Lc5/a;

    move-result-object p1

    const-string v0, "AppSet.getClient(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lc5/a;->a()Lm6/Task;

    move-result-object p1

    const-string v0, "client.appSetIdInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lwb/b$a;

    invoke-direct {v0, p0, p2}, Lwb/b$a;-><init>(Lwb/b;Lwb/a;)V

    .line 5
    iget-object p2, p0, Lwb/b;->a:Ljava/lang/Object;

    monitor-enter p2

    .line 6
    :try_start_0
    iget-object v1, p0, Lwb/b;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p2

    .line 8
    invoke-virtual {p1, v0}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    return-void

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p2

    throw p1
.end method
