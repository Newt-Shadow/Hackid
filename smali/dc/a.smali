.class public Ldc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/a$c;,
        Ldc/a$b;
    }
.end annotation


# static fields
.field public static final c:J


# instance fields
.field private a:J

.field private final b:Ldc/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0xa

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Ldc/a;->c:J

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ldc/c;

    invoke-direct {v0}, Ldc/c;-><init>()V

    invoke-direct {p0, v0}, Ldc/a;-><init>(Ldc/c;)V

    return-void
.end method

.method constructor <init>(Ldc/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ldc/a;->b:Ldc/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldc/a;->b:Ldc/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldc/c;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Ldc/a;->a:J

    .line 8
    .line 9
    return-void
.end method

.method public b(JLcom/yandex/metrica/core/api/executors/ICommonExecutor;Ldc/a$c;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ldc/a;->b:Ldc/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldc/c;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Ldc/a;->a:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    sub-long/2addr p1, v0

    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    new-instance v0, Ldc/a$a;

    .line 18
    .line 19
    invoke-direct {v0, p0, p4}, Ldc/a$a;-><init>(Ldc/a;Ldc/a$c;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p3, v0, p1, p2}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
