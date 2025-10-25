.class public final Lib/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lib/d;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcom/posthog/internal/replay/RRWireframe;


# direct methods
.method public constructor <init>(Lib/d;ZZZLcom/posthog/internal/replay/RRWireframe;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lib/j;->a:Lib/d;

    .line 3
    iput-boolean p2, p0, Lib/j;->b:Z

    .line 4
    iput-boolean p3, p0, Lib/j;->c:Z

    .line 5
    iput-boolean p4, p0, Lib/j;->d:Z

    .line 6
    iput-object p5, p0, Lib/j;->e:Lcom/posthog/internal/replay/RRWireframe;

    return-void
.end method

.method public synthetic constructor <init>(Lib/d;ZZZLcom/posthog/internal/replay/RRWireframe;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move v5, v0

    goto :goto_2

    :cond_2
    move v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 p5, 0x0

    :cond_3
    move-object v6, p5

    move-object v1, p0

    move-object v2, p1

    .line 7
    invoke-direct/range {v1 .. v6}, Lib/j;-><init>(Lib/d;ZZZLcom/posthog/internal/replay/RRWireframe;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lib/j;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final b()Lcom/posthog/internal/replay/RRWireframe;
    .locals 1

    .line 1
    iget-object v0, p0, Lib/j;->e:Lcom/posthog/internal/replay/RRWireframe;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lib/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lib/j;->a:Lib/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lib/j;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lib/j;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lib/j;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public final g(Lcom/posthog/internal/replay/RRWireframe;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lib/j;->e:Lcom/posthog/internal/replay/RRWireframe;

    .line 2
    .line 3
    return-void
.end method

.method public final h(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lib/j;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public final i(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lib/j;->c:Z

    .line 2
    .line 3
    return-void
.end method
