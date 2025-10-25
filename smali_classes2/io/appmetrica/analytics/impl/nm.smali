.class public final Lio/appmetrica/analytics/impl/nm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lio/appmetrica/analytics/impl/Kl;

.field public final d:Lio/appmetrica/analytics/impl/ql;

.field public final e:Lio/appmetrica/analytics/impl/Sl;

.field public final f:Lio/appmetrica/analytics/impl/M4;

.field public final g:Lio/appmetrica/analytics/impl/Pl;

.field public final h:Lio/appmetrica/analytics/impl/W7;

.field public final i:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

.field public final j:Lio/appmetrica/analytics/impl/R3;

.field public final k:Lio/appmetrica/analytics/impl/U3;

.field public final l:Lio/appmetrica/analytics/impl/tl;

.field public final m:Lio/appmetrica/analytics/impl/Bd;

.field public final n:Lio/appmetrica/analytics/impl/Vn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/Kl;Lio/appmetrica/analytics/impl/ql;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/nm;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/nm;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lio/appmetrica/analytics/impl/nm;->c:Lio/appmetrica/analytics/impl/Kl;

    .line 9
    .line 10
    iput-object p4, p0, Lio/appmetrica/analytics/impl/nm;->d:Lio/appmetrica/analytics/impl/ql;

    .line 11
    .line 12
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    invoke-virtual {p4}, Lio/appmetrica/analytics/impl/za;->z()Lio/appmetrica/analytics/impl/Sl;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    iput-object p4, p0, Lio/appmetrica/analytics/impl/nm;->e:Lio/appmetrica/analytics/impl/Sl;

    .line 21
    .line 22
    invoke-virtual {p4}, Lio/appmetrica/analytics/impl/Sl;->b()Lio/appmetrica/analytics/impl/Ql;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    new-instance v0, Lio/appmetrica/analytics/impl/M4;

    .line 27
    .line 28
    invoke-direct {v0, p2}, Lio/appmetrica/analytics/impl/M4;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lio/appmetrica/analytics/impl/nm;->f:Lio/appmetrica/analytics/impl/M4;

    .line 32
    .line 33
    new-instance v0, Lio/appmetrica/analytics/impl/Pl;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Pl;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lio/appmetrica/analytics/impl/nm;->g:Lio/appmetrica/analytics/impl/Pl;

    .line 39
    .line 40
    new-instance v0, Lio/appmetrica/analytics/impl/W7;

    .line 41
    .line 42
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/W7;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lio/appmetrica/analytics/impl/nm;->h:Lio/appmetrica/analytics/impl/W7;

    .line 46
    .line 47
    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    .line 48
    .line 49
    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lio/appmetrica/analytics/impl/nm;->i:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    .line 53
    .line 54
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->e()Lio/appmetrica/analytics/impl/R3;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lio/appmetrica/analytics/impl/nm;->j:Lio/appmetrica/analytics/impl/R3;

    .line 63
    .line 64
    new-instance v0, Lio/appmetrica/analytics/impl/U3;

    .line 65
    .line 66
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/U3;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lio/appmetrica/analytics/impl/nm;->k:Lio/appmetrica/analytics/impl/U3;

    .line 70
    .line 71
    new-instance v0, Lio/appmetrica/analytics/impl/tl;

    .line 72
    .line 73
    new-instance v1, Lio/appmetrica/analytics/impl/Ll;

    .line 74
    .line 75
    invoke-direct {v1, p1, p2}, Lio/appmetrica/analytics/impl/Ll;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v1, p4, p3}, Lio/appmetrica/analytics/impl/tl;-><init>(Lio/appmetrica/analytics/impl/Ll;Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/impl/Kl;)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lio/appmetrica/analytics/impl/nm;->l:Lio/appmetrica/analytics/impl/tl;

    .line 82
    .line 83
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/za;->p()Lio/appmetrica/analytics/impl/Bd;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iput-object p1, p0, Lio/appmetrica/analytics/impl/nm;->m:Lio/appmetrica/analytics/impl/Bd;

    .line 92
    .line 93
    new-instance p1, Lio/appmetrica/analytics/impl/Vn;

    .line 94
    .line 95
    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Vn;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lio/appmetrica/analytics/impl/nm;->n:Lio/appmetrica/analytics/impl/Vn;

    .line 99
    .line 100
    return-void
.end method
