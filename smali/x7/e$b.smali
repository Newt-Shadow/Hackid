.class final Lx7/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx7/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:Lq7/g0;

.field private final b:Lm6/l;

.field final synthetic c:Lx7/e;


# direct methods
.method private constructor <init>(Lx7/e;Lq7/g0;Lm6/l;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lx7/e$b;->c:Lx7/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lx7/e$b;->a:Lq7/g0;

    .line 4
    iput-object p3, p0, Lx7/e$b;->b:Lm6/l;

    return-void
.end method

.method synthetic constructor <init>(Lx7/e;Lq7/g0;Lm6/l;Lx7/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lx7/e$b;-><init>(Lx7/e;Lq7/g0;Lm6/l;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lx7/e$b;->c:Lx7/e;

    .line 2
    .line 3
    iget-object v1, p0, Lx7/e$b;->a:Lq7/g0;

    .line 4
    .line 5
    iget-object v2, p0, Lx7/e$b;->b:Lm6/l;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lx7/e;->c(Lx7/e;Lq7/g0;Lm6/l;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lx7/e$b;->c:Lx7/e;

    .line 11
    .line 12
    invoke-static {v0}, Lx7/e;->d(Lx7/e;)Lq7/t0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lq7/t0;->e()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lx7/e$b;->c:Lx7/e;

    .line 20
    .line 21
    invoke-static {v0}, Lx7/e;->e(Lx7/e;)D

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v4, "Delay for: "

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 40
    .line 41
    const-wide v5, 0x408f400000000000L    # 1000.0

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    div-double v5, v0, v5

    .line 47
    .line 48
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const-string v6, "%.2f"

    .line 57
    .line 58
    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v4, " s for report: "

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v4, p0, Lx7/e$b;->a:Lq7/g0;

    .line 71
    .line 72
    invoke-virtual {v4}, Lq7/g0;->d()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v2, v3}, Ln7/g;->b(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v1}, Lx7/e;->f(D)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
