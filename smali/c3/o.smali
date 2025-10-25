.class public final synthetic Lc3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/q$a;


# instance fields
.field public final synthetic a:Lc3/b$a;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lc3/b$a;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/o;->a:Lc3/b$a;

    iput-wide p2, p0, Lc3/o;->b:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc3/o;->a:Lc3/b$a;

    iget-wide v1, p0, Lc3/o;->b:J

    check-cast p1, Lc3/b;

    invoke-static {v0, v1, v2, p1}, Lc3/n1;->N0(Lc3/b$a;JLc3/b;)V

    return-void
.end method
