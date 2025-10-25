.class public final Lio/appmetrica/analytics/impl/od;
.super Lio/appmetrica/analytics/impl/Pg;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/o5;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Pg;-><init>(Lio/appmetrica/analytics/impl/o5;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/o5;->b()Lio/appmetrica/analytics/impl/h5;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/h5;->b()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "empty"

    .line 15
    .line 16
    :cond_0
    sget-object v1, Lkotlin/jvm/internal/f0;->a:Lkotlin/jvm/internal/f0;

    .line 17
    .line 18
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "[ModulesEventHandler-%s]"

    .line 28
    .line 29
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/za;->n()Lio/appmetrica/analytics/impl/gd;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/gd;->a(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Ljava/util/Map$Entry;

    .line 72
    .line 73
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    new-instance v4, Lio/appmetrica/analytics/impl/fd;

    .line 78
    .line 79
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Ljava/lang/String;

    .line 84
    .line 85
    invoke-direct {v4, p1, v2}, Lio/appmetrica/analytics/impl/fd;-><init>(Lio/appmetrica/analytics/impl/o5;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v3, v4}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    iput-object v1, p0, Lio/appmetrica/analytics/impl/od;->b:Ljava/util/ArrayList;

    .line 97
    .line 98
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/e6;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/od;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/util/Collection;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lxc/k;

    .line 29
    .line 30
    invoke-virtual {v1}, Lxc/k;->a()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lio/appmetrica/analytics/modulesapi/internal/service/event/ModuleServiceEventHandler;

    .line 35
    .line 36
    invoke-virtual {v1}, Lxc/k;->b()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lio/appmetrica/analytics/impl/fd;

    .line 41
    .line 42
    new-instance v3, Lio/appmetrica/analytics/impl/id;

    .line 43
    .line 44
    iget-object v4, v1, Lio/appmetrica/analytics/impl/fd;->b:Lio/appmetrica/analytics/impl/jd;

    .line 45
    .line 46
    iget-object v5, v1, Lio/appmetrica/analytics/impl/fd;->a:Lio/appmetrica/analytics/impl/Kb;

    .line 47
    .line 48
    new-instance v6, Lio/appmetrica/analytics/impl/hd;

    .line 49
    .line 50
    iget-object v1, v1, Lio/appmetrica/analytics/impl/fd;->c:Lio/appmetrica/analytics/impl/v9;

    .line 51
    .line 52
    invoke-direct {v6, v1, p1}, Lio/appmetrica/analytics/impl/hd;-><init>(Lio/appmetrica/analytics/impl/v9;Lio/appmetrica/analytics/impl/e6;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v3, v4, v5, v6}, Lio/appmetrica/analytics/impl/id;-><init>(Lio/appmetrica/analytics/modulesapi/internal/common/ModulePreferences;Lio/appmetrica/analytics/modulesapi/internal/common/ModulePreferences;Lio/appmetrica/analytics/modulesapi/internal/service/event/ModuleEventServiceHandlerReporter;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v2, v3, p1}, Lio/appmetrica/analytics/modulesapi/internal/service/event/ModuleServiceEventHandler;->handle(Lio/appmetrica/analytics/modulesapi/internal/service/event/ModuleEventServiceHandlerContext;Lio/appmetrica/analytics/coreapi/internal/event/CounterReportApi;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    const/4 p1, 0x1

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 67
    :goto_1
    return p1
.end method
