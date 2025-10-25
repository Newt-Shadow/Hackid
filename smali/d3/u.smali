.class public final synthetic Ld3/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld3/v$a;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Ld3/v$a;IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/u;->a:Ld3/v$a;

    iput p2, p0, Ld3/u;->b:I

    iput-wide p3, p0, Ld3/u;->c:J

    iput-wide p5, p0, Ld3/u;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Ld3/u;->a:Ld3/v$a;

    iget v1, p0, Ld3/u;->b:I

    iget-wide v2, p0, Ld3/u;->c:J

    iget-wide v4, p0, Ld3/u;->d:J

    invoke-static/range {v0 .. v5}, Ld3/v$a;->i(Ld3/v$a;IJJ)V

    return-void
.end method
