.class public abstract Lio/appmetrica/analytics/impl/A;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    sget-object v0, Lio/appmetrica/analytics/AdType;->NATIVE:Lio/appmetrica/analytics/AdType;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    sget-object v0, Lio/appmetrica/analytics/AdType;->BANNER:Lio/appmetrica/analytics/AdType;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    sget-object v0, Lio/appmetrica/analytics/AdType;->REWARDED:Lio/appmetrica/analytics/AdType;

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    sget-object v0, Lio/appmetrica/analytics/AdType;->INTERSTITIAL:Lio/appmetrica/analytics/AdType;

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    sget-object v0, Lio/appmetrica/analytics/AdType;->MREC:Lio/appmetrica/analytics/AdType;

    .line 46
    .line 47
    const/4 v1, 0x5

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    sget-object v0, Lio/appmetrica/analytics/AdType;->APP_OPEN:Lio/appmetrica/analytics/AdType;

    .line 57
    .line 58
    const/4 v1, 0x7

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    sget-object v0, Lio/appmetrica/analytics/AdType;->OTHER:Lio/appmetrica/analytics/AdType;

    .line 68
    .line 69
    const/4 v1, 0x6

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    filled-new-array/range {v2 .. v8}, [Lxc/k;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0}, Lyc/e0;->h([Lxc/k;)Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sput-object v0, Lio/appmetrica/analytics/impl/A;->a:Ljava/util/Map;

    .line 87
    .line 88
    return-void
.end method
