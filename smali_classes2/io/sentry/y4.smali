.class public final Lio/sentry/y4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/q1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/y4$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lio/sentry/i5;

.field private final d:I

.field private final e:Ljava/util/concurrent/Callable;

.field private final f:Ljava/lang/String;

.field private g:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lio/sentry/i5;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "type is required"

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/i5;

    iput-object p1, p0, Lio/sentry/y4;->c:Lio/sentry/i5;

    .line 3
    iput-object p3, p0, Lio/sentry/y4;->a:Ljava/lang/String;

    .line 4
    iput p2, p0, Lio/sentry/y4;->d:I

    .line 5
    iput-object p4, p0, Lio/sentry/y4;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lio/sentry/y4;->e:Ljava/util/concurrent/Callable;

    .line 7
    iput-object p5, p0, Lio/sentry/y4;->f:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lio/sentry/i5;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 15
    invoke-direct/range {v0 .. v5}, Lio/sentry/y4;-><init>(Lio/sentry/i5;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/i5;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "type is required"

    .line 9
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/i5;

    iput-object p1, p0, Lio/sentry/y4;->c:Lio/sentry/i5;

    .line 10
    iput-object p3, p0, Lio/sentry/y4;->a:Ljava/lang/String;

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lio/sentry/y4;->d:I

    .line 12
    iput-object p4, p0, Lio/sentry/y4;->b:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lio/sentry/y4;->e:Ljava/util/concurrent/Callable;

    .line 14
    iput-object p5, p0, Lio/sentry/y4;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/y4;->e:Ljava/util/concurrent/Callable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    return v0

    .line 16
    :catchall_0
    const/4 v0, -0x1

    .line 17
    return v0

    .line 18
    :cond_0
    iget v0, p0, Lio/sentry/y4;->d:I

    .line 19
    .line 20
    return v0
.end method

.method public b()Lio/sentry/i5;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/y4;->c:Lio/sentry/i5;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/y4;->g:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public serialize(Lio/sentry/m2;Lio/sentry/ILogger;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/sentry/m2;->t()Lio/sentry/m2;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/sentry/y4;->a:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "content_type"

    .line 9
    .line 10
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lio/sentry/y4;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lio/sentry/y4;->b:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const-string v0, "filename"

    .line 24
    .line 25
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lio/sentry/y4;->b:Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v0, v1}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 32
    .line 33
    .line 34
    :cond_1
    const-string v0, "type"

    .line 35
    .line 36
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lio/sentry/y4;->c:Lio/sentry/i5;

    .line 41
    .line 42
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lio/sentry/y4;->f:Ljava/lang/String;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const-string v0, "attachment_type"

    .line 50
    .line 51
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lio/sentry/y4;->f:Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {v0, v1}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 58
    .line 59
    .line 60
    :cond_2
    const-string v0, "length"

    .line 61
    .line 62
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lio/sentry/y4;->a()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    int-to-long v1, v1

    .line 71
    invoke-interface {v0, v1, v2}, Lio/sentry/m2;->a(J)Lio/sentry/m2;

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lio/sentry/y4;->g:Ljava/util/Map;

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Ljava/lang/String;

    .line 97
    .line 98
    iget-object v2, p0, Lio/sentry/y4;->g:Ljava/util/Map;

    .line 99
    .line 100
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-interface {p1, v1}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, p2, v2}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    invoke-interface {p1}, Lio/sentry/m2;->r()Lio/sentry/m2;

    .line 112
    .line 113
    .line 114
    return-void
.end method
