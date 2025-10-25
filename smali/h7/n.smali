.class public final Lh7/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh7/n$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/util/o;->a(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "ApplicationId must be set."

    invoke-static {v0, v1}, Ln5/q;->o(ZLjava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lh7/n;->b:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lh7/n;->a:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lh7/n;->c:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lh7/n;->d:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lh7/n;->e:Ljava/lang/String;

    .line 9
    iput-object p6, p0, Lh7/n;->f:Ljava/lang/String;

    .line 10
    iput-object p7, p0, Lh7/n;->g:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh7/n$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lh7/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lh7/n;
    .locals 9

    .line 1
    new-instance v0, Ln5/t;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ln5/t;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "google_app_id"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ln5/t;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0

    .line 20
    :cond_0
    new-instance p0, Lh7/n;

    .line 21
    .line 22
    const-string v1, "google_api_key"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ln5/t;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v1, "firebase_database_url"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ln5/t;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const-string v1, "ga_trackingId"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ln5/t;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const-string v1, "gcm_defaultSenderId"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ln5/t;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const-string v1, "google_storage_bucket"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ln5/t;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    const-string v1, "project_id"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ln5/t;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    move-object v1, p0

    .line 59
    invoke-direct/range {v1 .. v8}, Lh7/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lh7/n;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lh7/n;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lh7/n;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lh7/n;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lh7/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lh7/n;

    .line 8
    .line 9
    iget-object v0, p0, Lh7/n;->b:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Lh7/n;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v2}, Ln5/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lh7/n;->a:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p1, Lh7/n;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v2}, Ln5/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lh7/n;->c:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v2, p1, Lh7/n;->c:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0, v2}, Ln5/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lh7/n;->d:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v2, p1, Lh7/n;->d:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v0, v2}, Ln5/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lh7/n;->e:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v2, p1, Lh7/n;->e:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v0, v2}, Ln5/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lh7/n;->f:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v2, p1, Lh7/n;->f:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v0, v2}, Ln5/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    iget-object v0, p0, Lh7/n;->g:Ljava/lang/String;

    .line 70
    .line 71
    iget-object p1, p1, Lh7/n;->g:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v0, p1}, Ln5/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    :cond_1
    return v1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lh7/n;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lh7/n;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lh7/n;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Lh7/n;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lh7/n;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lh7/n;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lh7/n;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lh7/n;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lh7/n;->f:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lh7/n;->g:Ljava/lang/String;

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ln5/o;->b([Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ln5/o;->c(Ljava/lang/Object;)Ln5/o$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "applicationId"

    .line 6
    .line 7
    iget-object v2, p0, Lh7/n;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Ln5/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ln5/o$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "apiKey"

    .line 14
    .line 15
    iget-object v2, p0, Lh7/n;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ln5/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ln5/o$a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "databaseUrl"

    .line 22
    .line 23
    iget-object v2, p0, Lh7/n;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Ln5/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ln5/o$a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "gcmSenderId"

    .line 30
    .line 31
    iget-object v2, p0, Lh7/n;->e:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ln5/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ln5/o$a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "storageBucket"

    .line 38
    .line 39
    iget-object v2, p0, Lh7/n;->f:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Ln5/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ln5/o$a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "projectId"

    .line 46
    .line 47
    iget-object v2, p0, Lh7/n;->g:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Ln5/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ln5/o$a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ln5/o$a;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method
