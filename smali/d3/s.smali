.class public final synthetic Ld3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld3/v$a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Ld3/v$a;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/s;->a:Ld3/v$a;

    iput-object p2, p0, Ld3/s;->b:Ljava/lang/String;

    iput-wide p3, p0, Ld3/s;->c:J

    iput-wide p5, p0, Ld3/s;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Ld3/s;->a:Ld3/v$a;

    iget-object v1, p0, Ld3/s;->b:Ljava/lang/String;

    iget-wide v2, p0, Ld3/s;->c:J

    iget-wide v4, p0, Ld3/s;->d:J

    invoke-static/range {v0 .. v5}, Ld3/v$a;->f(Ld3/v$a;Ljava/lang/String;JJ)V

    return-void
.end method
