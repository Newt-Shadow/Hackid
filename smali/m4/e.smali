.class public final Lm4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/r;


# static fields
.field public static final c:Lm4/e;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field public static final f:Lb3/r$a;


# instance fields
.field public final a:Lo6/q;

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lm4/e;

    .line 2
    .line 3
    invoke-static {}, Lo6/q;->D()Lo6/q;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lm4/e;-><init>(Ljava/util/List;J)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lm4/e;->c:Lm4/e;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lm4/e;->d:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lm4/e;->e:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v0, Lm4/d;

    .line 29
    .line 30
    invoke-direct {v0}, Lm4/d;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lm4/e;->f:Lb3/r$a;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/util/List;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lo6/q;->t(Ljava/util/Collection;)Lo6/q;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lm4/e;->a:Lo6/q;

    .line 9
    .line 10
    iput-wide p2, p0, Lm4/e;->b:J

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lm4/e;
    .locals 0

    .line 1
    invoke-static {p0}, Lm4/e;->b(Landroid/os/Bundle;)Lm4/e;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Landroid/os/Bundle;)Lm4/e;
    .locals 3

    .line 1
    sget-object v0, Lm4/e;->d:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lo6/q;->D()Lo6/q;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v1, Lm4/b;->J:Lb3/r$a;

    .line 15
    .line 16
    invoke-static {v1, v0}, Ly4/c;->b(Lb3/r$a;Ljava/util/List;)Lo6/q;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    sget-object v1, Lm4/e;->e:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    new-instance p0, Lm4/e;

    .line 27
    .line 28
    invoke-direct {p0, v0, v1, v2}, Lm4/e;-><init>(Ljava/util/List;J)V

    .line 29
    .line 30
    .line 31
    return-object p0
.end method
