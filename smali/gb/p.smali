.class public final Lgb/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgb/p$a;
    }
.end annotation


# static fields
.field private static final c:Lgb/p$a;

.field private static volatile d:Z


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lfb/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgb/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgb/p$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgb/p;->c:Lgb/p$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lfb/b;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "config"

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
    iput-object p1, p0, Lgb/p;->a:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lgb/p;->b:Lfb/b;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lgb/p;->d:Z

    .line 3
    .line 4
    return-void
.end method

.method public c(Leb/h;)V
    .locals 12

    .line 1
    const-string v0, "postHog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lgb/p;->d:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    sput-boolean v0, Lgb/p;->d:Z

    .line 13
    .line 14
    iget-object v0, p0, Lgb/p;->a:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v2, p0, Lgb/p;->b:Lfb/b;

    .line 17
    .line 18
    invoke-static {v0, v2}, Lgb/o;->i(Landroid/content/Context;Lfb/b;)Landroid/content/pm/PackageInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_6

    .line 23
    .line 24
    iget-object v2, p0, Lgb/p;->b:Lfb/b;

    .line 25
    .line 26
    invoke-virtual {v2}, Leb/d;->d()Llb/m;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_6

    .line 31
    .line 32
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0}, Lgb/o;->r(Landroid/content/pm/PackageInfo;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    const-string v0, "version"

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x2

    .line 42
    invoke-static {v2, v0, v6, v7, v6}, Llb/m$b;->a(Llb/m;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    instance-of v9, v8, Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v9, :cond_1

    .line 49
    .line 50
    check-cast v8, Ljava/lang/String;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move-object v8, v6

    .line 54
    :goto_0
    const-string v9, "build"

    .line 55
    .line 56
    invoke-static {v2, v9, v6, v7, v6}, Llb/m$b;->a(Llb/m;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 61
    .line 62
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 63
    .line 64
    .line 65
    if-nez v6, :cond_2

    .line 66
    .line 67
    const-string v6, "Application Installed"

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    instance-of v10, v6, Ljava/lang/Integer;

    .line 71
    .line 72
    if-eqz v10, :cond_3

    .line 73
    .line 74
    check-cast v6, Ljava/lang/Number;

    .line 75
    .line 76
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    int-to-long v10, v6

    .line 81
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    invoke-static {v6, v10}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    if-eqz v10, :cond_4

    .line 94
    .line 95
    return-void

    .line 96
    :cond_4
    if-eqz v8, :cond_5

    .line 97
    .line 98
    const-string v10, "previous_version"

    .line 99
    .line 100
    invoke-interface {v7, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    :cond_5
    const-string v8, "previous_build"

    .line 104
    .line 105
    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    const-string v6, "Application Updated"

    .line 109
    .line 110
    :goto_1
    const-string v8, "versionName"

    .line 111
    .line 112
    invoke-static {v3, v8}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    invoke-interface {v2, v0, v3}, Llb/m;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-interface {v2, v9, v0}, Llb/m;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    const/4 v3, 0x0

    .line 136
    const/4 v5, 0x0

    .line 137
    const/4 v0, 0x0

    .line 138
    const/4 v8, 0x0

    .line 139
    const/16 v9, 0x3a

    .line 140
    .line 141
    const/4 v10, 0x0

    .line 142
    move-object v1, p1

    .line 143
    move-object v2, v6

    .line 144
    move-object v4, v7

    .line 145
    move-object v6, v0

    .line 146
    move-object v7, v8

    .line 147
    move v8, v9

    .line 148
    move-object v9, v10

    .line 149
    invoke-static/range {v1 .. v9}, Leb/h$a;->a(Leb/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_6
    return-void
.end method
