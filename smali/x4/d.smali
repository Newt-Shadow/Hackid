.class public final synthetic Lx4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx4/e$a$a$a;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lx4/e$a$a$a;IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx4/d;->a:Lx4/e$a$a$a;

    iput p2, p0, Lx4/d;->b:I

    iput-wide p3, p0, Lx4/d;->c:J

    iput-wide p5, p0, Lx4/d;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lx4/d;->a:Lx4/e$a$a$a;

    iget v1, p0, Lx4/d;->b:I

    iget-wide v2, p0, Lx4/d;->c:J

    iget-wide v4, p0, Lx4/d;->d:J

    invoke-static/range {v0 .. v5}, Lx4/e$a$a;->a(Lx4/e$a$a$a;IJJ)V

    return-void
.end method
