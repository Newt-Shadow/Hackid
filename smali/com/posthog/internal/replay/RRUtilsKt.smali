.class public final Lcom/posthog/internal/replay/RRUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final capture(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/posthog/internal/replay/RREvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$snapshot_data"

    .line 1
    invoke-static {v0, p0}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    move-result-object p0

    const-string v0, "$snapshot_source"

    const-string v1, "mobile"

    .line 2
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    move-result-object v0

    filled-new-array {p0, v0}, [Lxc/k;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lyc/e0;->i([Lxc/k;)Ljava/util/Map;

    move-result-object v3

    .line 4
    sget-object v0, Leb/c;->A:Leb/c$a;

    sget-object p0, Leb/f;->c:Leb/f;

    invoke-virtual {p0}, Leb/f;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3a

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Leb/h$a;->a(Leb/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public static final capture(Ljava/util/List;Leb/h;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/posthog/internal/replay/RREvent;",
            ">;",
            "Leb/h;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$snapshot_data"

    .line 5
    invoke-static {v0, p0}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    move-result-object v0

    const-string v1, "$snapshot_source"

    const-string v2, "mobile"

    .line 6
    invoke-static {v1, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    move-result-object v1

    filled-new-array {v0, v1}, [Lxc/k;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lyc/e0;->i([Lxc/k;)Ljava/util/Map;

    move-result-object v4

    if-eqz p1, :cond_0

    .line 8
    sget-object p0, Leb/f;->c:Leb/f;

    invoke-virtual {p0}, Leb/f;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3a

    const/4 v9, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Leb/h$a;->a(Leb/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/posthog/internal/replay/RRUtilsKt;->capture(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public static synthetic capture$default(Ljava/util/List;Leb/h;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lcom/posthog/internal/replay/RRUtilsKt;->capture(Ljava/util/List;Leb/h;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
