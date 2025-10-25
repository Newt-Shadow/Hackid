.class public final Ll3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/m;


# instance fields
.field private final a:J

.field private final b:Lg3/m;


# direct methods
.method public constructor <init>(JLg3/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Ll3/d;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Ll3/d;->b:Lg3/m;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic b(Ll3/d;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Ll3/d;->a:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public a(II)Lg3/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Ll3/d;->b:Lg3/m;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lg3/m;->a(II)Lg3/b0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public l(Lg3/z;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll3/d;->b:Lg3/m;

    .line 2
    .line 3
    new-instance v1, Ll3/d$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Ll3/d$a;-><init>(Ll3/d;Lg3/z;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lg3/m;->l(Lg3/z;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Ll3/d;->b:Lg3/m;

    .line 2
    .line 3
    invoke-interface {v0}, Lg3/m;->n()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
