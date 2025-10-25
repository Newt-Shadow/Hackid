.class public final synthetic Lc3/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/q$a;


# instance fields
.field public final synthetic a:Lc3/b$a;

.field public final synthetic b:J

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lc3/b$a;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/k1;->a:Lc3/b$a;

    iput-wide p2, p0, Lc3/k1;->b:J

    iput p4, p0, Lc3/k1;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc3/k1;->a:Lc3/b$a;

    iget-wide v1, p0, Lc3/k1;->b:J

    iget v3, p0, Lc3/k1;->c:I

    check-cast p1, Lc3/b;

    invoke-static {v0, v1, v2, v3, p1}, Lc3/n1;->S(Lc3/b$a;JILc3/b;)V

    return-void
.end method
