.class public final synthetic Lc3/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/q$a;


# instance fields
.field public final synthetic a:Lc3/b$a;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lc3/b$a;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/a1;->a:Lc3/b$a;

    iput-object p2, p0, Lc3/a1;->b:Ljava/lang/Object;

    iput-wide p3, p0, Lc3/a1;->c:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc3/a1;->a:Lc3/b$a;

    iget-object v1, p0, Lc3/a1;->b:Ljava/lang/Object;

    iget-wide v2, p0, Lc3/a1;->c:J

    check-cast p1, Lc3/b;

    invoke-static {v0, v1, v2, v3, p1}, Lc3/n1;->Q0(Lc3/b$a;Ljava/lang/Object;JLc3/b;)V

    return-void
.end method
