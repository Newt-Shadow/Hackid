.class public final Ly0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ly0/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ly0/d$a;

    invoke-direct {v0}, Ly0/d$a;-><init>()V

    sput-object v0, Ly0/d$a;->a:Ly0/d$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
