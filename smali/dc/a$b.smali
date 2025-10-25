.class public Ldc/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private final b:Ldc/a$c;

.field private final c:Ldc/a;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Ldc/f;->c()Ldc/f;

    move-result-object v0

    invoke-virtual {v0}, Ldc/f;->a()Ldc/a;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ldc/a$b;-><init>(Ljava/lang/Runnable;Ldc/a;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ldc/a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ldc/a$b;->a:Z

    .line 4
    new-instance v0, Ldc/a$b$a;

    invoke-direct {v0, p0, p1}, Ldc/a$b$a;-><init>(Ldc/a$b;Ljava/lang/Runnable;)V

    iput-object v0, p0, Ldc/a$b;->b:Ldc/a$c;

    .line 5
    iput-object p2, p0, Ldc/a$b;->c:Ldc/a;

    return-void
.end method

.method static synthetic a(Ldc/a$b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Ldc/a$b;->a:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic b(Ldc/a$b;)Ldc/a$c;
    .locals 0

    .line 1
    iget-object p0, p0, Ldc/a$b;->b:Ldc/a$c;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(JLcom/yandex/metrica/core/api/executors/ICommonExecutor;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ldc/a$b;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ldc/a$b;->c:Ldc/a;

    .line 6
    .line 7
    iget-object v1, p0, Ldc/a$b;->b:Ldc/a$c;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3, v1}, Ldc/a;->b(JLcom/yandex/metrica/core/api/executors/ICommonExecutor;Ldc/a$c;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ldc/a$b$b;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Ldc/a$b$b;-><init>(Ldc/a$b;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p3, p1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method
