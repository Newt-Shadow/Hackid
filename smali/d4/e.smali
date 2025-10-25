.class public final synthetic Ld4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld4/t$c;


# instance fields
.field public final synthetic a:Ld4/f;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ld4/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld4/e;->a:Ld4/f;

    iput-object p2, p0, Ld4/e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ld4/t;Lb3/g4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/e;->a:Ld4/f;

    iget-object v1, p0, Ld4/e;->b:Ljava/lang/Object;

    invoke-static {v0, v1, p1, p2}, Ld4/f;->F(Ld4/f;Ljava/lang/Object;Ld4/t;Lb3/g4;)V

    return-void
.end method
