.class public final synthetic Lx2/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/m0$b;


# instance fields
.field public final synthetic a:Lx2/m0;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Ls2/a$a;


# direct methods
.method public synthetic constructor <init>(Lx2/m0;Ljava/util/Map;Ls2/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx2/b0;->a:Lx2/m0;

    iput-object p2, p0, Lx2/b0;->b:Ljava/util/Map;

    iput-object p3, p0, Lx2/b0;->c:Ls2/a$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lx2/b0;->a:Lx2/m0;

    iget-object v1, p0, Lx2/b0;->b:Ljava/util/Map;

    iget-object v2, p0, Lx2/b0;->c:Ls2/a$a;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, Lx2/m0;->q0(Lx2/m0;Ljava/util/Map;Ls2/a$a;Landroid/database/Cursor;)Ls2/a;

    move-result-object p1

    return-object p1
.end method
