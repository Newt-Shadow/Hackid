.class final Lo2/b$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# static fields
.field static final a:Lo2/b$h;

.field private static final b:Ld8/c;

.field private static final c:Ld8/c;

.field private static final d:Ld8/c;

.field private static final e:Ld8/c;

.field private static final f:Ld8/c;

.field private static final g:Ld8/c;

.field private static final h:Ld8/c;

.field private static final i:Ld8/c;

.field private static final j:Ld8/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo2/b$h;

    .line 2
    .line 3
    invoke-direct {v0}, Lo2/b$h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lo2/b$h;->a:Lo2/b$h;

    .line 7
    .line 8
    const-string v0, "eventTimeMs"

    .line 9
    .line 10
    invoke-static {v0}, Ld8/c;->d(Ljava/lang/String;)Ld8/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lo2/b$h;->b:Ld8/c;

    .line 15
    .line 16
    const-string v0, "eventCode"

    .line 17
    .line 18
    invoke-static {v0}, Ld8/c;->d(Ljava/lang/String;)Ld8/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lo2/b$h;->c:Ld8/c;

    .line 23
    .line 24
    const-string v0, "complianceData"

    .line 25
    .line 26
    invoke-static {v0}, Ld8/c;->d(Ljava/lang/String;)Ld8/c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lo2/b$h;->d:Ld8/c;

    .line 31
    .line 32
    const-string v0, "eventUptimeMs"

    .line 33
    .line 34
    invoke-static {v0}, Ld8/c;->d(Ljava/lang/String;)Ld8/c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lo2/b$h;->e:Ld8/c;

    .line 39
    .line 40
    const-string v0, "sourceExtension"

    .line 41
    .line 42
    invoke-static {v0}, Ld8/c;->d(Ljava/lang/String;)Ld8/c;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lo2/b$h;->f:Ld8/c;

    .line 47
    .line 48
    const-string v0, "sourceExtensionJsonProto3"

    .line 49
    .line 50
    invoke-static {v0}, Ld8/c;->d(Ljava/lang/String;)Ld8/c;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lo2/b$h;->g:Ld8/c;

    .line 55
    .line 56
    const-string v0, "timezoneOffsetSeconds"

    .line 57
    .line 58
    invoke-static {v0}, Ld8/c;->d(Ljava/lang/String;)Ld8/c;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lo2/b$h;->h:Ld8/c;

    .line 63
    .line 64
    const-string v0, "networkConnectionInfo"

    .line 65
    .line 66
    invoke-static {v0}, Ld8/c;->d(Ljava/lang/String;)Ld8/c;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sput-object v0, Lo2/b$h;->i:Ld8/c;

    .line 71
    .line 72
    const-string v0, "experimentIds"

    .line 73
    .line 74
    invoke-static {v0}, Ld8/c;->d(Ljava/lang/String;)Ld8/c;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Lo2/b$h;->j:Ld8/c;

    .line 79
    .line 80
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lo2/t;

    .line 2
    .line 3
    check-cast p2, Ld8/e;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lo2/b$h;->b(Lo2/t;Ld8/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Lo2/t;Ld8/e;)V
    .locals 3

    .line 1
    sget-object v0, Lo2/b$h;->b:Ld8/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Lo2/t;->d()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-interface {p2, v0, v1, v2}, Ld8/e;->b(Ld8/c;J)Ld8/e;

    .line 8
    .line 9
    .line 10
    sget-object v0, Lo2/b$h;->c:Ld8/c;

    .line 11
    .line 12
    invoke-virtual {p1}, Lo2/t;->c()Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p2, v0, v1}, Ld8/e;->c(Ld8/c;Ljava/lang/Object;)Ld8/e;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lo2/b$h;->d:Ld8/c;

    .line 20
    .line 21
    invoke-virtual {p1}, Lo2/t;->b()Lo2/p;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {p2, v0, v1}, Ld8/e;->c(Ld8/c;Ljava/lang/Object;)Ld8/e;

    .line 26
    .line 27
    .line 28
    sget-object v0, Lo2/b$h;->e:Ld8/c;

    .line 29
    .line 30
    invoke-virtual {p1}, Lo2/t;->e()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-interface {p2, v0, v1, v2}, Ld8/e;->b(Ld8/c;J)Ld8/e;

    .line 35
    .line 36
    .line 37
    sget-object v0, Lo2/b$h;->f:Ld8/c;

    .line 38
    .line 39
    invoke-virtual {p1}, Lo2/t;->h()[B

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {p2, v0, v1}, Ld8/e;->c(Ld8/c;Ljava/lang/Object;)Ld8/e;

    .line 44
    .line 45
    .line 46
    sget-object v0, Lo2/b$h;->g:Ld8/c;

    .line 47
    .line 48
    invoke-virtual {p1}, Lo2/t;->i()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {p2, v0, v1}, Ld8/e;->c(Ld8/c;Ljava/lang/Object;)Ld8/e;

    .line 53
    .line 54
    .line 55
    sget-object v0, Lo2/b$h;->h:Ld8/c;

    .line 56
    .line 57
    invoke-virtual {p1}, Lo2/t;->j()J

    .line 58
    .line 59
    .line 60
    move-result-wide v1

    .line 61
    invoke-interface {p2, v0, v1, v2}, Ld8/e;->b(Ld8/c;J)Ld8/e;

    .line 62
    .line 63
    .line 64
    sget-object v0, Lo2/b$h;->i:Ld8/c;

    .line 65
    .line 66
    invoke-virtual {p1}, Lo2/t;->g()Lo2/w;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-interface {p2, v0, v1}, Ld8/e;->c(Ld8/c;Ljava/lang/Object;)Ld8/e;

    .line 71
    .line 72
    .line 73
    sget-object v0, Lo2/b$h;->j:Ld8/c;

    .line 74
    .line 75
    invoke-virtual {p1}, Lo2/t;->f()Lo2/q;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-interface {p2, v0, p1}, Ld8/e;->c(Ld8/c;Ljava/lang/Object;)Ld8/e;

    .line 80
    .line 81
    .line 82
    return-void
.end method
