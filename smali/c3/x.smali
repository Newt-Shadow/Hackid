.class public final synthetic Lc3/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/q$a;


# instance fields
.field public final synthetic a:Lc3/b$a;

.field public final synthetic b:I

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lc3/b$a;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/x;->a:Lc3/b$a;

    iput p2, p0, Lc3/x;->b:I

    iput-wide p3, p0, Lc3/x;->c:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc3/x;->a:Lc3/b$a;

    iget v1, p0, Lc3/x;->b:I

    iget-wide v2, p0, Lc3/x;->c:J

    check-cast p1, Lc3/b;

    invoke-static {v0, v1, v2, v3, p1}, Lc3/n1;->t0(Lc3/b$a;IJLc3/b;)V

    return-void
.end method
