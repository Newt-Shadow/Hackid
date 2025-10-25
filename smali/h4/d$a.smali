.class public final Lh4/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "a"
.end annotation


# instance fields
.field public final a:Lb3/x1;

.field public final b:Lo6/q;

.field public final c:Lh4/k;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public final g:J

.field public final h:Ljava/util/List;

.field public final i:Ljava/util/List;


# direct methods
.method public constructor <init>(Lb3/x1;Ljava/util/List;Lh4/k;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh4/d$a;->a:Lb3/x1;

    .line 5
    .line 6
    invoke-static {p2}, Lo6/q;->t(Ljava/util/Collection;)Lo6/q;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lh4/d$a;->b:Lo6/q;

    .line 11
    .line 12
    iput-object p3, p0, Lh4/d$a;->c:Lh4/k;

    .line 13
    .line 14
    iput-object p4, p0, Lh4/d$a;->d:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p5, p0, Lh4/d$a;->e:Ljava/util/ArrayList;

    .line 17
    .line 18
    iput-object p6, p0, Lh4/d$a;->f:Ljava/util/ArrayList;

    .line 19
    .line 20
    iput-object p7, p0, Lh4/d$a;->h:Ljava/util/List;

    .line 21
    .line 22
    iput-object p8, p0, Lh4/d$a;->i:Ljava/util/List;

    .line 23
    .line 24
    iput-wide p9, p0, Lh4/d$a;->g:J

    .line 25
    .line 26
    return-void
.end method
