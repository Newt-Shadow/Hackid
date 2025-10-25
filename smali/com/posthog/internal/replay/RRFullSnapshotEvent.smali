.class public final Lcom/posthog/internal/replay/RRFullSnapshotEvent;
.super Lcom/posthog/internal/replay/RREvent;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/List;IIJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/posthog/internal/replay/RRWireframe;",
            ">;IIJ)V"
        }
    .end annotation

    .line 1
    const-string v0, "wireframes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/posthog/internal/replay/RREventType;->FullSnapshot:Lcom/posthog/internal/replay/RREventType;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "top"

    .line 13
    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {v0, p2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const-string v0, "left"

    .line 23
    .line 24
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-static {v0, p3}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    filled-new-array {p2, p3}, [Lxc/k;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {p2}, Lyc/e0;->h([Lxc/k;)Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const-string p3, "initialOffset"

    .line 41
    .line 42
    invoke-static {p3, p2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    filled-new-array {p1, p2}, [Lxc/k;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lyc/e0;->h([Lxc/k;)Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, v1, p4, p5, p1}, Lcom/posthog/internal/replay/RREvent;-><init>(Lcom/posthog/internal/replay/RREventType;JLjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
