.class Ll4/b$e;
.super Ll4/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final e:Ljava/util/List;

.field private f:I

.field private g:I

.field private h:J

.field private i:J

.field private j:J

.field private k:I

.field private l:Z

.field private m:Ll4/a$a;


# direct methods
.method public constructor <init>(Ll4/b$a;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SmoothStreamingMedia"

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, v0}, Ll4/b$a;-><init>(Ll4/b$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Ll4/b$e;->k:I

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Ll4/b$e;->m:Ll4/a$a;

    .line 11
    .line 12
    new-instance p1, Ljava/util/LinkedList;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Ll4/b$e;->e:Ljava/util/List;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ll4/a$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll4/b$e;->e:Ljava/util/List;

    .line 6
    .line 7
    check-cast p1, Ll4/a$b;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    instance-of v0, p1, Ll4/a$a;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Ll4/b$e;->m:Ll4/a$a;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-static {v0}, Ly4/a;->f(Z)V

    .line 25
    .line 26
    .line 27
    check-cast p1, Ll4/a$a;

    .line 28
    .line 29
    iput-object p1, p0, Ll4/b$e;->m:Ll4/a$a;

    .line 30
    .line 31
    :cond_2
    :goto_1
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Ll4/b$e;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v13, v0, [Ll4/a$b;

    .line 8
    .line 9
    iget-object v1, p0, Ll4/b$e;->e:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Ll4/b$e;->m:Ll4/a$a;

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    new-instance v1, Lf3/m;

    .line 19
    .line 20
    new-instance v2, Lf3/m$b;

    .line 21
    .line 22
    iget-object v3, p0, Ll4/b$e;->m:Ll4/a$a;

    .line 23
    .line 24
    iget-object v4, v3, Ll4/a$a;->a:Ljava/util/UUID;

    .line 25
    .line 26
    const-string v5, "video/mp4"

    .line 27
    .line 28
    iget-object v3, v3, Ll4/a$a;->b:[B

    .line 29
    .line 30
    invoke-direct {v2, v4, v5, v3}, Lf3/m$b;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 31
    .line 32
    .line 33
    filled-new-array {v2}, [Lf3/m$b;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {v1, v2}, Lf3/m;-><init>([Lf3/m$b;)V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    move v3, v2

    .line 42
    :goto_0
    if-ge v3, v0, :cond_2

    .line 43
    .line 44
    aget-object v4, v13, v3

    .line 45
    .line 46
    iget v5, v4, Ll4/a$b;->a:I

    .line 47
    .line 48
    const/4 v6, 0x2

    .line 49
    if-eq v5, v6, :cond_0

    .line 50
    .line 51
    const/4 v6, 0x1

    .line 52
    if-ne v5, v6, :cond_1

    .line 53
    .line 54
    :cond_0
    iget-object v4, v4, Ll4/a$b;->j:[Lb3/x1;

    .line 55
    .line 56
    move v5, v2

    .line 57
    :goto_1
    array-length v6, v4

    .line 58
    if-ge v5, v6, :cond_1

    .line 59
    .line 60
    aget-object v6, v4, v5

    .line 61
    .line 62
    invoke-virtual {v6}, Lb3/x1;->b()Lb3/x1$b;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v6, v1}, Lb3/x1$b;->O(Lf3/m;)Lb3/x1$b;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v6}, Lb3/x1$b;->G()Lb3/x1;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    aput-object v6, v4, v5

    .line 75
    .line 76
    add-int/lit8 v5, v5, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    new-instance v0, Ll4/a;

    .line 83
    .line 84
    iget v2, p0, Ll4/b$e;->f:I

    .line 85
    .line 86
    iget v3, p0, Ll4/b$e;->g:I

    .line 87
    .line 88
    iget-wide v4, p0, Ll4/b$e;->h:J

    .line 89
    .line 90
    iget-wide v6, p0, Ll4/b$e;->i:J

    .line 91
    .line 92
    iget-wide v8, p0, Ll4/b$e;->j:J

    .line 93
    .line 94
    iget v10, p0, Ll4/b$e;->k:I

    .line 95
    .line 96
    iget-boolean v11, p0, Ll4/b$e;->l:Z

    .line 97
    .line 98
    iget-object v12, p0, Ll4/b$e;->m:Ll4/a$a;

    .line 99
    .line 100
    move-object v1, v0

    .line 101
    invoke-direct/range {v1 .. v13}, Ll4/a;-><init>(IIJJJIZLl4/a$a;[Ll4/a$b;)V

    .line 102
    .line 103
    .line 104
    return-object v0
.end method

.method public n(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    .line 1
    const-string v0, "MajorVersion"

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Ll4/b$a;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Ll4/b$e;->f:I

    .line 8
    .line 9
    const-string v0, "MinorVersion"

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Ll4/b$a;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Ll4/b$e;->g:I

    .line 16
    .line 17
    const-wide/32 v0, 0x989680

    .line 18
    .line 19
    .line 20
    const-string v2, "TimeScale"

    .line 21
    .line 22
    invoke-virtual {p0, p1, v2, v0, v1}, Ll4/b$a;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Ll4/b$e;->h:J

    .line 27
    .line 28
    const-string v0, "Duration"

    .line 29
    .line 30
    invoke-virtual {p0, p1, v0}, Ll4/b$a;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iput-wide v0, p0, Ll4/b$e;->i:J

    .line 35
    .line 36
    const-string v0, "DVRWindowLength"

    .line 37
    .line 38
    const-wide/16 v3, 0x0

    .line 39
    .line 40
    invoke-virtual {p0, p1, v0, v3, v4}, Ll4/b$a;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    iput-wide v0, p0, Ll4/b$e;->j:J

    .line 45
    .line 46
    const-string v0, "LookaheadCount"

    .line 47
    .line 48
    const/4 v1, -0x1

    .line 49
    invoke-virtual {p0, p1, v0, v1}, Ll4/b$a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput v0, p0, Ll4/b$e;->k:I

    .line 54
    .line 55
    const-string v0, "IsLive"

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0, p1, v0, v1}, Ll4/b$a;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iput-boolean p1, p0, Ll4/b$e;->l:Z

    .line 63
    .line 64
    iget-wide v0, p0, Ll4/b$e;->h:J

    .line 65
    .line 66
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, v2, p1}, Ll4/b$a;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
