.class public final Lcom/posthog/internal/replay/RRMetaEvent;
.super Lcom/posthog/internal/replay/RREvent;
.source "SourceFile"


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "href"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/posthog/internal/replay/RREventType;->Meta:Lcom/posthog/internal/replay/RREventType;

    .line 7
    .line 8
    invoke-static {v0, p5}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 9
    .line 10
    .line 11
    move-result-object p5

    .line 12
    const-string v0, "width"

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {v0, p1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "height"

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {v0, p2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    filled-new-array {p5, p1, p2}, [Lxc/k;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lyc/e0;->h([Lxc/k;)Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p0, v1, p3, p4, p1}, Lcom/posthog/internal/replay/RREvent;-><init>(Lcom/posthog/internal/replay/RREventType;JLjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
