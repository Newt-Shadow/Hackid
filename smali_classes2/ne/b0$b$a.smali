.class public final Lne/b0$b$a;
.super Lne/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lne/b0$b;->a(Laf/f;Lne/v;J)Lne/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lne/v;

.field final synthetic d:J

.field final synthetic e:Laf/f;


# direct methods
.method constructor <init>(Lne/v;JLaf/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lne/b0$b$a;->c:Lne/v;

    .line 2
    .line 3
    iput-wide p2, p0, Lne/b0$b$a;->d:J

    .line 4
    .line 5
    iput-object p4, p0, Lne/b0$b$a;->e:Laf/f;

    .line 6
    .line 7
    invoke-direct {p0}, Lne/b0;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lne/b0$b$a;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public e()Lne/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/b0$b$a;->c:Lne/v;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Laf/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/b0$b$a;->e:Laf/f;

    .line 2
    .line 3
    return-object v0
.end method
