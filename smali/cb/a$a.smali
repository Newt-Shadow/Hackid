.class public final Lcb/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/net/Uri;

.field private d:J

.field private e:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcb/a;
    .locals 8

    .line 1
    new-instance v7, Lcb/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcb/a$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcb/a$a;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcb/a$a;->c:Landroid/net/Uri;

    .line 8
    .line 9
    iget-wide v4, p0, Lcb/a$a;->d:J

    .line 10
    .line 11
    iget-object v6, p0, Lcb/a$a;->e:[B

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    invoke-direct/range {v0 .. v6}, Lcb/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;J[B)V

    .line 15
    .line 16
    .line 17
    return-object v7
.end method

.method public final b([B)Lcb/a$a;
    .locals 1

    .line 1
    const-string v0, "bytes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcb/a$a;->e:[B

    .line 7
    .line 8
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcb/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcb/a$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcb/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcb/a$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e(J)Lcb/a$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcb/a$a;->d:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final f(Landroid/net/Uri;)Lcb/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcb/a$a;->c:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method
