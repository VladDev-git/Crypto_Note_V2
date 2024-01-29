#include "profil.h"

Profil::Profil()
    : profilLogStatus(false)
{}

Profil::~Profil() {}

bool Profil::GetLogStatus()
{
   return profilLogStatus;
}
