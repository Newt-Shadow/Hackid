.class public final synthetic Lc3/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/q$a;


# instance fields
.field public final synthetic a:Lc3/b$a;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lc3/b$a;IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/z0;->a:Lc3/b$a;

    iput p2, p0, Lc3/z0;->b:I

    iput-wide p3, p0, Lc3/z0;->c:J

    iput-wide p5, p0, Lc3/z0;->d:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lc3/z0;->a:Lc3/b$a;

    iget v1, p0, Lc3/z0;->b:I

    iget-wide v2, p0, Lc3/z0;->c:J

    iget-wide v4, p0, Lc3/z0;->d:J

    move-object v6, p1

    check-cast v6, Lc3/b;

    invoke-static/range {v0 .. v6}, Lc3/n1;->y0(Lc3/b$a;IJJLc3/b;)V

    return-void
.end method
