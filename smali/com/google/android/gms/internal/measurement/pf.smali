.class public final Lcom/google/android/gms/internal/measurement/pf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/of;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/p9;

.field public static final b:Lcom/google/android/gms/internal/measurement/p9;

.field public static final c:Lcom/google/android/gms/internal/measurement/p9;

.field public static final d:Lcom/google/android/gms/internal/measurement/p9;

.field public static final e:Lcom/google/android/gms/internal/measurement/p9;

.field public static final f:Lcom/google/android/gms/internal/measurement/p9;

.field public static final g:Lcom/google/android/gms/internal/measurement/p9;

.field public static final h:Lcom/google/android/gms/internal/measurement/p9;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/j9;

    .line 2
    .line 3
    const-string v1, "com.google.android.gms.measurement"

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/e9;->a(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/j9;-><init>(Landroid/net/Uri;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/j9;->a()Lcom/google/android/gms/internal/measurement/j9;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/j9;->b()Lcom/google/android/gms/internal/measurement/j9;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "measurement.rb.attribution.ad_campaign_info"

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/j9;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p9;

    .line 24
    .line 25
    .line 26
    const-string v1, "measurement.rb.attribution.service.bundle_on_backgrounded"

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/j9;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p9;

    .line 29
    .line 30
    .line 31
    const-string v1, "measurement.rb.attribution.client2"

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/j9;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p9;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sput-object v1, Lcom/google/android/gms/internal/measurement/pf;->a:Lcom/google/android/gms/internal/measurement/p9;

    .line 38
    .line 39
    const-string v1, "measurement.rb.attribution.followup1.service"

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/j9;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p9;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sput-object v1, Lcom/google/android/gms/internal/measurement/pf;->b:Lcom/google/android/gms/internal/measurement/p9;

    .line 47
    .line 48
    const-string v1, "measurement.rb.attribution.client.get_trigger_uris_async"

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/j9;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p9;

    .line 51
    .line 52
    .line 53
    const-string v1, "measurement.rb.attribution.service.trigger_uris_high_priority"

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/j9;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p9;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    sput-object v1, Lcom/google/android/gms/internal/measurement/pf;->c:Lcom/google/android/gms/internal/measurement/p9;

    .line 60
    .line 61
    const-string v1, "measurement.rb.attribution.index_out_of_bounds_fix"

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/j9;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p9;

    .line 64
    .line 65
    .line 66
    const-string v1, "measurement.rb.attribution.service.enable_max_trigger_uris_queried_at_once"

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/j9;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p9;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    sput-object v1, Lcom/google/android/gms/internal/measurement/pf;->d:Lcom/google/android/gms/internal/measurement/p9;

    .line 73
    .line 74
    const-string v1, "measurement.rb.attribution.retry_disposition"

    .line 75
    .line 76
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/j9;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p9;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    sput-object v1, Lcom/google/android/gms/internal/measurement/pf;->e:Lcom/google/android/gms/internal/measurement/p9;

    .line 81
    .line 82
    const-string v1, "measurement.rb.attribution.service"

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/j9;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p9;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    sput-object v1, Lcom/google/android/gms/internal/measurement/pf;->f:Lcom/google/android/gms/internal/measurement/p9;

    .line 89
    .line 90
    const-string v1, "measurement.rb.attribution.enable_trigger_redaction"

    .line 91
    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/j9;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p9;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    sput-object v1, Lcom/google/android/gms/internal/measurement/pf;->g:Lcom/google/android/gms/internal/measurement/p9;

    .line 97
    .line 98
    const-string v1, "measurement.rb.attribution.uuid_generation"

    .line 99
    .line 100
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/j9;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p9;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    sput-object v1, Lcom/google/android/gms/internal/measurement/pf;->h:Lcom/google/android/gms/internal/measurement/p9;

    .line 105
    .line 106
    const-string v1, "measurement.id.rb.attribution.retry_disposition"

    .line 107
    .line 108
    const-wide/16 v3, 0x0

    .line 109
    .line 110
    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/gms/internal/measurement/j9;->c(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/p9;

    .line 111
    .line 112
    .line 113
    const-string v1, "measurement.rb.attribution.improved_retry"

    .line 114
    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/j9;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p9;

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/pf;->g:Lcom/google/android/gms/internal/measurement/p9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p9;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/pf;->a:Lcom/google/android/gms/internal/measurement/p9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p9;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/pf;->b:Lcom/google/android/gms/internal/measurement/p9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p9;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/pf;->c:Lcom/google/android/gms/internal/measurement/p9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p9;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/pf;->d:Lcom/google/android/gms/internal/measurement/p9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p9;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/pf;->e:Lcom/google/android/gms/internal/measurement/p9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p9;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/pf;->h:Lcom/google/android/gms/internal/measurement/p9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p9;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/pf;->f:Lcom/google/android/gms/internal/measurement/p9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p9;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final zza()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
