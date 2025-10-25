.class public final Lt1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/f;


# instance fields
.field private final b:Lt1/l;

.field private final c:Lu1/a;


# direct methods
.method public constructor <init>(Lt1/l;Lu1/a;)V
    .locals 1

    .line 1
    const-string v0, "windowMetricsCalculator"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "windowBackend"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lt1/i;->b:Lt1/l;

    .line 15
    .line 16
    iput-object p2, p0, Lt1/i;->c:Lu1/a;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic b(Lt1/i;)Lu1/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lt1/i;->c:Lu1/a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lwd/d;
    .locals 2

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lt1/i$a;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lt1/i$a;-><init>(Lt1/i;Landroid/app/Activity;Lad/e;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lwd/f;->d(Lid/Function2;)Lwd/d;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {}, Ltd/z0;->c()Ltd/d2;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1, v0}, Lwd/f;->p(Lwd/d;Lad/i;)Lwd/d;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method
