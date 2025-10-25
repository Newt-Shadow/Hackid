.class public final Lcb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcb/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/net/Uri;

.field private final d:J

.field private final e:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;J[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcb/a;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcb/a;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcb/a;->c:Landroid/net/Uri;

    .line 9
    .line 10
    iput-wide p4, p0, Lcb/a;->d:J

    .line 11
    .line 12
    iput-object p6, p0, Lcb/a;->e:[B

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 7

    .line 1
    new-instance v0, Lxc/k;

    .line 2
    .line 3
    const-string v1, "path"

    .line 4
    .line 5
    iget-object v2, p0, Lcb/a;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lxc/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lxc/k;

    .line 11
    .line 12
    const-string v2, "name"

    .line 13
    .line 14
    iget-object v3, p0, Lcb/a;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, Lxc/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lxc/k;

    .line 20
    .line 21
    iget-wide v3, p0, Lcb/a;->d:J

    .line 22
    .line 23
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v4, "size"

    .line 28
    .line 29
    invoke-direct {v2, v4, v3}, Lxc/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    new-instance v3, Lxc/k;

    .line 33
    .line 34
    const-string v4, "bytes"

    .line 35
    .line 36
    iget-object v5, p0, Lcb/a;->e:[B

    .line 37
    .line 38
    invoke-direct {v3, v4, v5}, Lxc/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    new-instance v4, Lxc/k;

    .line 42
    .line 43
    iget-object v5, p0, Lcb/a;->c:Landroid/net/Uri;

    .line 44
    .line 45
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const-string v6, "identifier"

    .line 50
    .line 51
    invoke-direct {v4, v6, v5}, Lxc/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    filled-new-array {v0, v1, v2, v3, v4}, [Lxc/k;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lyc/e0;->g([Lxc/k;)Ljava/util/HashMap;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method
