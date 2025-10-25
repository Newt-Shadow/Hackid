.class public final Lio/appmetrica/analytics/impl/Wf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Sf;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/ag;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/ag;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Wf;->a:Lio/appmetrica/analytics/impl/ag;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Wf;->a:Lio/appmetrica/analytics/impl/ag;

    .line 2
    .line 3
    iget-object v1, v0, Lio/appmetrica/analytics/impl/ag;->g:Ljava/util/ArrayList;

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_4

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    move-object v4, v3

    .line 25
    check-cast v4, Lio/appmetrica/analytics/impl/lg;

    .line 26
    .line 27
    iget-object v5, v0, Lio/appmetrica/analytics/impl/ag;->c:Lio/appmetrica/analytics/impl/ug;

    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    iget-object v4, v4, Lio/appmetrica/analytics/impl/lg;->a:Ljava/lang/String;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v4, 0x0

    .line 38
    :goto_1
    const/4 v5, 0x1

    .line 39
    if-eqz v4, :cond_3

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/4 v4, 0x0

    .line 49
    goto :goto_3

    .line 50
    :cond_3
    :goto_2
    move v4, v5

    .line 51
    :goto_3
    xor-int/2addr v4, v5

    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    invoke-static {v2}, Lyc/m;->L(Ljava/lang/Iterable;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v2, v0, Lio/appmetrica/analytics/impl/ag;->c:Lio/appmetrica/analytics/impl/ug;

    .line 63
    .line 64
    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/ug;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/lg;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/ag;->a(Lio/appmetrica/analytics/impl/lg;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
